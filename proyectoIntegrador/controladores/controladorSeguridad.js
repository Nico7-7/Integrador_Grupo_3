const db = require('../database/models');
const bcrypt = require('bcryptjs');
let passEncriptada = bcrypt.hashSync('monito123', 10)

let controladorSeguridad = {
    login: function (req, res) {
        return res.render('login', {
            failed: req.query.failed
        });
    },
    autenticarse: function (req, res) {
        db.Usuario.findOne({ where: { mail: req.body.mail} })
        .then((usuario) => {
            if(bcrypt.compareSync(req.body.contrasenia, usuario.contrasenia)){
                req.session.usuario = usuario;
                if(req.body.recordarme){
                    res.cookies('id', usuario.id, {maxAge: 1000 * 60 *60})
                
                }
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
            req.body.contrasenia = bcrypt.hashSync(req.body.contrasenia)
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
        res.clearCookie('usuario.id')
        return res.redirect('/');
    }
}

module.exports = controladorSeguridad;