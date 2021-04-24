const usuarios = require("../data/usuarios")
const comentarios = require('../data/comentarios')
const products = require('../data/productos')

const controller = {
    profile: function(req, res, next){
        let id = req.params.id;
                res.render('profile', {
                    'usuarios': usuarios.lista,
                    'idUsuario': id,
                    'producto_usuario': products.lista
                })
    },
    login: function(req, res, next){
        res.render('login', {
        })
    },
    profileEdit: function(req, res, next){
        res.render('profile-edit', {
        })
    },
    register: function(req, res, next){
        res.render('register', {
        })
    }
}

module.exports = controller;