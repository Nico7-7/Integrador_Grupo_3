const cripto = require('../data/productos');
const comentarioUsuarios = require('../data/comentarios');
const comentariosUsuarios = require('../data/comentarios');

const controller = {
    index: function(req, res, next){
        res.render('index', {
            'cripto': cripto.lista
        })
    },
    productosGenerales: function(req, res, next){
        res.render('productosGenerales', {
            'cripto': cripto.lista            
        })
    },
    detalleProduct: function(req, res, next){
        let id = req.params.id;
        res.render('product', {
            'cripto': cripto.lista,
            'producto': id,
            'comentario': comentariosUsuarios.lista
        })
    },
    agregarProducto: function(req, res, next){
        res.render('product-add', {
        })
    }

}

module.exports = controller; 
