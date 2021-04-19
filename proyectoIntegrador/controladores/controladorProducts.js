let cripto = require('../data/productos');
const controller = {
    index: function(req, res, next){
        res.render('index', {
            'cripto': cripto.lista
        })
    },
    detalleProduct: function(req, res, next){
        res.render('product'), {
            'cripto': cripto.lista
        }
    },
    agregarProducto: function(req, res, next){
        res.render('product-add', {
        })
    }

}

module.exports = controller; 
