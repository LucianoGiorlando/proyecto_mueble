const { Router } = require('express');
var pool = require('./bd');

async function getStocks() {
    var query = 'select * from stocks';
    var rows = await pool.query(query);
    return rows;
}

async function insterStock(obj) {
    try {
        var query = "insert into stocks set ?";
        var rows = await pool.query(query, [obj])
        return rows;

    } catch (error) {
        console.log(error);
        throw error;
    } // cierra catch
} // cierra insert

async function deleteStocksById(id) {
    var query = 'delete from stocks where id = ?';
    var rows = await pool.query(query, [id]);
    return rows;    
}

async function getStocksById(id) {
    var query = 'select * from stocks where id = ?';
    var rows = await pool.query(query, [id]);
    return rows[0];    
}

// para modificar UPDATE de los datos
async function modificarStockById(obj, id) {
    try {
        var query = 'update stocks set ? where id=?';
        var rows = await pool.query(query, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}


module.exports = { getStocks, insterStock, deleteStocksById, getStocksById, modificarStockById }
