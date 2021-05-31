const productos = require('../database/models')

const controller = {
    search: function(req, res, next){
        let buscador = req.query.search;
        res.render('search-results', {
            'busqueda': buscador,
            'producto': productos.lista
        })
    }
}

module.exports = controller