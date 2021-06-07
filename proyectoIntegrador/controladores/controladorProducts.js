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
                ],
                include: [{
                    association: 'usuario'
                }]
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
        let imagenProducto = {
           url_imagen: '/images/products/' + req.file.filename, 
           nombre_producto: req.body.nombre_producto,
           fecha_publicacion: req.body.fecha_publicacion,
           id_usuario: req.body.id_usuario,
           descripcion_larga: req.body.descripcion_larga,
           descripcion_corta: req.body.descripcion_corta
        };
        db.Producto.create(imagenProducto)
        .then(() => {
            return res.redirect('index', {
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    editarProducto: function(req, res, next){
        db.Producto.findByPk(req.params.id)
        .then((data) => {
            return res.render('product-edit', {
                cripto: data
            })
        })
       
    },
    productoEditado: function(req, res, next){
        let imagenProducto = {
           url_imagen: req.file.filename, 
           nombre_producto: req.body.nombre_producto,
           fecha_publicacion: req.body.fecha_publicacion,
           id_usuario: req.body.id_usuario,
           descripcion_larga: req.body.descripcion_larga,
           descripcion_corta: req.body.descripcion_corta
        };
        db.Producto.update(imagenProducto)
        .then(() => {
            return res.redirect('index', {
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    }

}

module.exports = controller; 


