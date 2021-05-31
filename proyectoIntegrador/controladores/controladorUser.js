const db = require('../database/models');
const Producto = require('../database/models/Producto');
const Usuario = require('../database/models/Usuario')

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
    },
    profileUsuario: function(req, res, next){
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