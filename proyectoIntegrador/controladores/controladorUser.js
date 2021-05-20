const db = require('../database/models');
const Producto = require('../database/models/Producto');

const controller = {
    profile: function(req, res, next){
        db.Usuario.findByPk(req.params.id)
        .then((usuario) => {
            db.Producto.findAll({
                where: [
                {id_usuario: req.params.id}
                ]
            }) 
            .then((producto) => {
                    return res.render('profile', {
                        'usuario': usuario,
                        'imagen': usuario.url_imagen_usuario,
                        'idUsuario': usuario.id,
                        'producto': producto,
                    })
            })
            .catch((error) => {
                return res.send(error);
            })
        })
        .catch((error) => {
            return res.send(error);
        })

        // let id = req.params.id;
        //     for(let i = 0; i < usuarios.length; i++) {
        //         if(usuarios[i].id == idUsuario){
        //             res.render('profile', {
        //                 'usuario': usuarios[i].lista,
        //                 'imagen': usuarios[i].url_imagen_usuario,
        //                 'idUsuario': id,
        //                 'producto_usuario': products.lista
        //             })
        //     }}
        //     for(let i=0; i < producto_usuario.length; i++){
        //         if(producto_usuario[i].id_usuario == idUsuario){
        //             res.render('profile', {
        //                 'usuario': usuarios[i].lista,
        //                 'imagen': usuarios[i].url_imagen_usuario,
        //                 'idUsuario': id,
        //                 'producto_usuario': products.lista
        //             })
        //     }}
    },
    profileUsuario: function(req, res, next){
        let id = req.params.id;
        res.render('profileUsuario', {
            'usuarios': usuarios.lista,
            'producto_usuario': products.lista,
            'idUsuario': id
        })
    },
    login: function(req, res, next){
        res.render('login', {
        })
    },
    profileEdit: function(req, res, next){
        let id = req.params.id;
            res.render('profile-edit', {
        })
    },
    register: function(req, res, next){
        res.render('register', {
        })
    }
}

module.exports = controller;