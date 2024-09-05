var express = require('express');
var router = express.Router();
var stocksModel = require('../../models/stocksModel');
var util = require('util');
var cloudinary = require('cloudinary').v2
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.upload);

/* GET home page. */
router.get('/', async function(req, res, next) {

    var stocks = await stocksModel.getStocks();

    stocks = stocks.map(stock => {
        if (stock.img_id) {
            const imagen = cloudinary.image(stock.img_id, {
                width: 60,
                height: 60,
                crop: 'fill'
            });
            return {
                ...stock,
                imagen
            }
        } else {
            return {
                ...stock,
                imagen: ''
            }
        }
    });

    res.render('admin/stocks', { 
        layout: 'admin/layout',
        usuario: req.session.nombre,
        stocks
    });
});

/* formulario para agregar */
router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', { // agregar.hbs
        layout: 'admin/layout'
    }) // cierra render
}) // cierra Get


router.post('/agregar', async (req, res, next) => {
    try {

        var img_id = '';
        console.log(req.files.imagen);

        if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        }

        if (req.body.nombre != "" && req.body.descripcion != "" && req.body.precio != "") {
            await stocksModel.insterStock({
                ...req.body, // spread
                img_id
            });
            res.redirect('/admin/stocks')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargo el producto'
        })
    }
})

// para eliminar un producto 
router.get('/eliminar/:id', async (req, res, next) => {

    var id = req.params.id;

    console.log(id)

    await stocksModel.deleteStocksById(id);
    res.redirect('/admin/stocks');
} ) // cierra get de eliminar

// formulario de modificar con los datos cargados
router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    //console.log(req.params.id);

    var stock = await stocksModel.getStocksById(id);

    res.render('admin/modificar', { // modificar.hbs
        layout: 'admin/layout',
        stock
    })
});

// para modificar un producto
router.post('/modificar', async (req, res, next) => {
    try {

        let img_id = req.body.img_original;
        let borrar_img_vieja = false;
        if (req.body.img_delete === "1") {
            img_id = null;
            borrar_img_vieja = true;
        } else {
            if (req.files && Object.keys(req.files).length > 0) {
                imagen = req.files.imagen;
                img_id = (await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }
        if (borrar_img_vieja && req.body.img_original) {
            await (destroy(req.body.img_original));
        }



        var obj = {
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            precio: req.body.precio
        }
        console.log(obj)
        console.log(req.body.id)

        await stocksModel.modificarStockById(obj, req.body.id);
        res.redirect('/admin/stocks');

    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se pudo modificar el producto'
        });
    }
})


module.exports = router;