var express = require('express');
var router = express.Router();

let controladorUser = require('../controladores/controladorUser');

router.get('/profile/:id', controladorUser.profile);
router.get('/profileUsuario/:id', controladorUser.profileUsuario);
router.get('/profile-edit/:id', controladorUser.profileEdit);

module.exports = router;
