const db = require('../database/models');
const Producto = require('../database/models/Producto');
const Usuario = require('../database/models/Usuario')

const controller = {
    profile: function(req, res, next){
    db.Usuario.findByPk(req.session.usuario.id,{
        include: [{association:'producto'}]
    })
            .then((usuario) => {
                    return res.render('perfil', {
                        'usuario': usuario,
                    })
            })
            .catch((error) => {
                return res.send(error);
            })
    },
    profileUsuario: function(req, res, next){
        db.Usuario.findByPk(req.params.id, {
            include: [{
                association: 'producto'
            }]
        })
        .then((usuariosGenerales) => {
            return res.render('profileUsuario', {
                usuariosGenerales
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    profileEdit: function(req, res, next){
        let id = req.params.id;
            res.render('editar-perfil', {
        })
    },
    profileEditConfirm: function(req, res, next){
        if (req.method == 'POST') {
            let imagenUsuario = {
                nombre_usuario: req.body.nombre_usuario,
                apellido_usuario: req.body.apellido_usuario,
                mail: req.body.mail,
                editar_perfil: req.body.editar_perfil
            };
            if (req.file) {
                imagenUsuario.url_imagen = '/images/usuarios/' + req.file.filename;
            }
            if (req.fecha_nacimiento) {
                imagenUsuario.fecha_nacimiento = req.body.fecha_nacimiento;
            }
            if (!req.texto_usuario) {
                imagenUsuario.texto_usuario = req.body.texto_usuario;
            }

            db.Usuario.update(imagenUsuario, {
                where: {
                    id: req.params.id
                }
            })
            .then(() => {
                req.flash('success', 'Perfil editado correctamente');
                res.redirect('/usuario/perfil/'+req.params.id)
            })
            .catch((error) => {
                next(error)
                req.flash('danger', 'Algo sali?? mal');
            })
        }
        if (req.method == 'GET') {
            return res.render('editar-perfil');
        }
    }
}

module.exports = controller;