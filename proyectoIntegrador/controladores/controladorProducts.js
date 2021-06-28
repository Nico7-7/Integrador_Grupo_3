const db = require('../database/models');
const op = db.Sequelize.Op;

const controller = {
    index: async function(req, res){
        let resultado = await db.Producto.findAll({
            order: [
                ['fecha_publicacion', 'DESC']
            ],
            limit: 4,
            include: [{
                association: 'producto_usuario'
            }]
        })
        let masComentados = await db.Producto.findAll({
            order: [
                ['num_comentarios', 'DESC']
            ], 
            limit: 4,
            include: [{
                association: 'producto_usuario'
            }]
        })
        res.render('index',{
            resultado,
            masComentados
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
    detalleProducto: async function(req, res, next){
        let cripto = await db.Producto.findByPk(req.params.id)
        let comentarios = await db.Comentario.findAll({ 
            where: [
                {id_producto: req.params.id}
            ],
            order: [
                ['fecha_comentado', 'DESC']
            ],
            limit: 5,
            include: [{
                association: 'usuario'
            }]
        }) 

        res.render('product', {
            cripto,
            comentarios
        })
    },
        
    agregarComentario: async function(req, res, next){
        let comentarios = {
           texto: req.body.texto,
           fecha_comentado: req.body.fecha_comentado,
           id_usuario_comentador: req.session.usuario.id,
           id_producto: req.params.id
        };
        const usuario = await db.Usuario.findByPk(req.session.usuario.id)
        db.Comentario.create(comentarios)
        .then(() => {
            usuario.update({num_comentarios_hechos: usuario.num_comentarios_hechos + 1})
            req.flash('success', 'Comentario creado correctamente');
            return res.redirect('/producto/detalleProducto/' + req.params.id)
        })
        .catch((error) => {
            next(error)
            req.flash('danger', 'Algo salió mal');
        })
    },
    agregarProducto: function(req, res, next){
        db.Producto.findAll()
        .then((data) => {
            return res.render('agregar-producto', {
                cripto: data
            })
        })
       
    },
    async productoBaseDatos(req, res, next){
        let imagenProducto = { 
           nombre_producto: req.body.nombre_producto,
           fecha_publicacion: req.body.fecha_publicacion,
           id_usuario: req.session.usuario.id,
           descripcion_larga: req.body.descripcion_larga,
           descripcion_corta: req.body.descripcion_corta
        };
        if (req.file) {
            imagenProducto.url_imagen = '/images/products/' + req.file.filename;
        }
        const usuario = await db.Usuario.findByPk(req.session.usuario.id)
        db.Producto.create(imagenProducto)
            .then(() => {
                usuario.update({cant_productos: usuario.cant_productos + 1})
                req.flash('success', 'Producto creado correctamente');
                return res.redirect('/')
            })
            .catch((error) => {
                next(error);
                req.flash('danger', 'Algo salió mal');
            })
        
    },
    editarProducto: function(req, res, next){
        db.Producto.findByPk(req.params.id)
        .then((data) => {
            return res.render('editar-producto', {
                cripto: data
            })
        })
       
    },
    productoEditado: function(req, res, next){
        let imagenProducto = {
           nombre_producto: req.body.nombre_producto,
           actualizar_producto: req.body.fecha_publicacion,
           descripcion_larga: req.body.descripcion_larga,
           descripcion_corta: req.body.descripcion_corta
        };
        if (req.file) {
            imagenProducto.url_imagen = '/images/products/' + req.file.filename;
        }
        db.Producto.update(imagenProducto, {
            where: {
                id: req.params.id
            }
        })
        .then(() => {
            req.flash('success', 'Producto editado correctamente');
            return res.redirect('/producto/productosGenerales')
        })
        .catch((error) => {
            next(error)
            req.flash('danger', 'Algo salió mal');
        })
    },
    async eliminarProducto(req, res, next) {
        const usuario = await db.Usuario.findByPk(req.session.usuario.id)
        db.Producto.destroy({ where: { id: req.params.id } })
          .then(() => {
            usuario.update({cant_productos: usuario.cant_productos - 1})
            req.flash('warning', 'Producto eliminado');
            res.redirect('/');
          })
          .catch((error) => {
           next(error)
           req.flash('danger', 'Algo salió mal');
            
          });
    }
}

module.exports = controller; 


