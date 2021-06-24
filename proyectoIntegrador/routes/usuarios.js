var express = require('express');
var router = express.Router();
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images/usuarios')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname))
    }
});

const upload = multer({storage: storage})


let controladorUsuario = require('../controladores/controladorUsuario');

router.get('/perfil/:id', controladorUsuario.profile);
router.get('/profileUsuario/:id', controladorUsuario.profileUsuario);
router.get('/editar-perfil/:id', controladorUsuario.profileEdit);
router.post('/editar-perfil/:id', upload.single('url_imagen_usuario'), controladorUsuario.profileEditConfirm);

module.exports = router;
