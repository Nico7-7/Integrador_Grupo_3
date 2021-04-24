var express = require('express');
var router = express.Router();

let controladoresUser = require('../controladores/controladorUser');

router.get('/profile/:id', controladoresUser.profile);
router.get('/profileUsuario/:id', controladoresUser.profileUsuario);
router.get('/login', controladoresUser.login);
router.get('/profile-edit/:id', controladoresUser.profileEdit);
router.get('/register', controladoresUser.register);

module.exports = router;
