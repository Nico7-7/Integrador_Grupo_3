const db = require('../database/models');
const op = db.Sequelize.Op;

const controller = {
    index: function(req, res){
        db.Producto.findAll()
        .then((resultados) => {
            return res.render('index', {
                cripto: resultados
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    productosGenerales: function(req, res, next){
        db.Producto.findAll()
        .then((resultados) => {
            return res.render('productosGenerales', {
                cripto: resultados
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    detalleProduct: function(req, res, next){
        db.Producto.findByPk(req.params.id)
        .then((cripto) => {
            db.Comentario.findAll({
                where: [
                    {id_producto: req.params.id}
                ]
            }) 
            .then((comentarios) => {
                return res.render('product', {
                comentarios: comentarios,
                cripto: cripto
                })
            }).catch((error) => {
                return res.send(error);
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    agregarProducto: function(req, res, next){
        db.Producto.findAll()
        .then((data) => {
            return res.render('product-add', {
                cripto: data
            })
        })
       
    },
    productoBaseDatos: function(req, res, next){
        db.Producto.create(req.body)
        .then(() => {
            return res.redirect('productosGenerales', {
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    }

}

module.exports = controller; 


