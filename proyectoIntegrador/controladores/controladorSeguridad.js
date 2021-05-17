const db = require('../database/models');

let controladorSeguridad = {
    login: function (req, res) {
        return res.render('login', {
            failed: req.query.failed
        });
    },
    autenticarse: function (req, res) {
        db.Usuario.findOne({ where: { mail: req.body.mail} })
        .then((usuario) => {
            if (req.body.contrasenia == usuario.contrasenia) {
                req.session.usuario = usuario;    //guarda todo el usuario
                return res.redirect('/');
            }
            res.redirect('/seguridad/login?failed=true');
        })
        .catch((error) => {
            return res.send(error);
        })
    },
    registrarse: function (req, res) {
        console.log(req.method)
        if (req.method == 'POST') {
            db.Usuario.create(req.body)
            .then(() => {
                res.redirect('/')
            })
            .catch((error) => {
                return res.send(error)
            })
        }
        if (req.method == 'GET') {
            return res.render('registrarse');
        }
    },
    logout: function (req, res) {
        req.session.destroy()
        return res.redirect('/');
    }
}

module.exports = controladorSeguridad