const db = require('../database/models');
const op = db.Sequelize.Op;

const controller = {
    index: function(req, res){
        db.Producto.findAll({
            order: [
                ['fecha_publicacion', 'DESC']
            ]
        })
        .then((resultado) => {
            db.Producto.findAll({
                order: [
                    ['num_comentarios', 'DESC']
                ]
            })
            .then((masComentados) => {
                return res.render('index', {
                    resultado,
                    masComentados
                })
            })
            .catch((error) => {
                return res.send(error);
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
    detalleProduct: async function(req, res, next){
        let cripto = await db.Producto.findByPk(req.params.id)
        let comentarios = await db.Comentario.findAll({ 
            where: [
                {id_producto: req.params.id}
            ],
            order: [
                ['fecha_comentado', 'DESC']
            ],
            include: [{
                association: 'usuario'
            }]
        }) 

        res.render('product', {
            cripto,
            comentarios
        })
    },
        
    agregarComentario: function(req, res, next){
        let comentarios = {
           texto: req.body.texto,
           fecha_comentado: req.body.fecha_comentado,
           id_usuario_comentador: req.body.id_usuario_comentador,
           id_producto: req.body.id_producto
        };
        db.Comentario.create(comentarios)
        .then(() => {
            return res.redirect('/producto/detalleproduct/' + req.params.id)
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
           url_imagen: '/images/products/' + req.file.filename, 
           nombre_producto: req.body.nombre_producto,
           fecha_publicacion: req.body.fecha_publicacion,
           id_usuario: req.body.id_usuario,
           descripcion_larga: req.body.descripcion_larga,
           descripcion_corta: req.body.descripcion_corta
        };
        db.Producto.update(imagenProducto, {
            where: {
                id: req.params.id
            }
        })
        .then(() => {
            return res.redirect('/producto/productosGenerales')
        })
        .catch((error) => {
            return res.send(error);
        })
    }

}

module.exports = controller; 


