var express = require('express');
var router = express.Router();

let controladoresUser = require('../controladores/controladorUser');

router.get('/profile', controladoresUser.profile);
router.get('/login', controladoresUser.login);
router.get('/profile-edit', controladoresUser.profileEdit);
router.get('/register', controladoresUser.register);

module.exports = router;
