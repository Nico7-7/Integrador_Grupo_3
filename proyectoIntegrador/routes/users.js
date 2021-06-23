var express = require('express');
var router = express.Router();
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images/users')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname))
    }
});

const upload = multer({storage: storage})


let controladorUser = require('../controladores/controladorUser');

router.get('/perfil/:id', controladorUser.profile);
router.get('/profileUsuario/:id', controladorUser.profileUsuario);
router.get('/editar-perfil/:id', controladorUser.profileEdit);
router.post('/editar-perfil/:id', upload.single('url_imagen_usuario'), controladorUser.profileEditConfirm);

module.exports = router;
