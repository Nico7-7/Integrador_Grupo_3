const usuarios = require("../data/usuarios")
const comentarios = require('../data/comentarios')

const controller = {
    profile: function(req, res, next){
        let id = req.params.id;
        //for(let i = id; i < usuarios.length; i++){
            res.render('profile', {
                'usuarios': usuarios.lista,
                'idUsuario': id
            })
        //}
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