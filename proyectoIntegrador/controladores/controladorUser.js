const db = require('../database/models');
const Producto = require('../database/models/Producto');
const Usuario = require('../database/models/Usuario')

const controller = {
    profile: function(req, res, next){
    db.Producto.findAll({
                where: [
                {id_usuario: req.params.id}
                ]
            }) 
            .then((producto) => {
                    return res.render('profile', {
                        'producto': producto,
                    })
            })
            .catch((error) => {
                return res.send(error);
            })
    },
    // profileUsuario: function(req, res, next){
    //     db.Usuario.findByPk(req.params.id, {
    //         where: [
    //             {id: req.params.id}
    //             ],
    //         include: [
    //             {association: 'producto' }
    //         ]
    //     })
    //     .then((usuarioPerfil) => {
    //         return res.render('profileUsuario', {
    //             'usuarioPerfil': usuarioPerfil,
    //         })
    //     })
    //     .catch((error) => {
    //         return res.send(error);
    //     })
    // },
    profileUsuario: function(req, res, next){
        // let usuario =  db.Usuario.findByPk(req.params.id)

        db.Usuario.findByPk(req.params.id, {
            include: [{
                association: 'producto'
            }]
        })
        .then((usuario) => {
            console.log(usuario);
            return res.render('profileUsuario', {
                'usuario': usuario,
            })
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    profileEdit: function(req, res, next){
        let id = req.params.id;
            res.render('profile-edit', {
        })
    },
    profileEditConfirm: function(req, res, next){
        if (req.method == 'POST') {
            let imagenUsuario = {
                nombre_usuario: req.body.nombre_usuario,
                apellido_usuario: req.body.apellido_usuario,
                mail: req.body.mail,
                url_imagen_usuario: '/images/users/' + req.file.filename,
                texto_usuario: req.body.texto_usuario,
                fecha_nacimiento: req.body.fecha_nacimiento
            };

            db.Usuario.update(imagenUsuario, {
                where: {
                    id: req.params.id
                }
            })
            .then(() => {
                res.redirect('/user/profile/'+req.params.id)
            })
            .catch((error) => {
                return res.send(error)
            })
        }
        if (req.method == 'GET') {
            return res.render('profile-edit');
        }
    }
}

module.exports = controller;