const db = require('../database/models');
const bcrypt = require('bcryptjs');
let passEncriptada = bcrypt.hashSync('monito123', 10)

let controladorSeguridad = {
    login: function (req, res) {
        return res.render('login', {
            failed: req.query.failed
        });
    },
    autenticarse: function (req, res, next) {
        db.Usuario.findOne({ where: { mail: req.body.mail} })
        .then((usuario) => {
            if(bcrypt.compareSync(req.body.contrasenia, usuario.contrasenia)){
                req.session.usuario = usuario;
                if(req.body.recordarme){
                    res.cookie('id', usuario.id, { maxAge: 1000 * 60 * 60 })
                }
                req.flash('success', 'Bienvenido!');
                return res.redirect('/');
            }
            res.redirect('/seguridad/login?failed=true');
            req.flash('danger', 'Algo salió mal');
        })
        .catch((error) => {
            next(error)
            req.flash('danger', 'Algo salió mal');
            
          });
    },
    registrarse: function (req, res) {
        console.log(req.method)
        if (req.method == 'POST') {
            req.body.contrasenia = bcrypt.hashSync(req.body.contrasenia)
            let imagenUsuario = {
                nombre_usuario: req.body.nombre_usuario,
                apellido_usuario: req.body.apellido_usuario,
                mail: req.body.mail,
                contrasenia: req.body.contrasenia,
                texto_usuario: req.body.texto_usuario,
                fecha_nacimiento: req.body.fecha_nacimiento,
                fecha_registracion: req.body.fecha_registracion
            };
            if (req.file) {
                imagenUsuario.url_imagen = '/images/usuarios/' + req.file.filename;
            }
            db.Usuario.create(imagenUsuario)
            .then(() => {
                req.flash('info', 'Ahora ve a loguearte!');
                req.session.usuario = usuario;
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
        res.clearCookie('id')
        return res.redirect('/');
    }
}

module.exports = controladorSeguridad;