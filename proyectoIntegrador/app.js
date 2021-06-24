var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
const db = require('./database/models');
const { flash } = require('express-flash-message');


var indexRouter = require('./routes/index');
var usuarioRouter = require('./routes/usuarios');
var buscadorRouter = require('./routes/buscador');
var routerSeguridad = require('./routes/seguridad')


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session(
  {secret: "proyecto_integrador",
		resave: false,
		saveUninitialized: true }
));
app.use(express.static(path.join(__dirname, 'public')));
app.use(flash());

const rutasPrivadas = [
  '/usuario/perfil', '/usuario/editar-perfil', '/producto/agregar-producto', '/producto/editar-producto'
]

app.use(function(req, res, next) {

  if (req.cookies.id != undefined && req.session.usuario == undefined){
    db.Usuario.findByPk(req.cookies.id)
    .then(usuario => {
      req.session.usuario = usuario;
      return next();
    })
    .catch( e => { next(createError(e.status)) })

  } else{
    next()
  }})

app.use(function(req, res, next) {
  if(req.session.usuario != undefined){
    res.locals.usuario = req.session.usuario;
  }
  else {
    if (rutasPrivadas.find(element => req.path.includes(element))) {
      return res.redirect ('/seguridad/login')
    }
  }
  next();
})

// get flash messages
app.use(async (req, res, next) => {
  res.locals.flash = {
    success: await req.consumeFlash('success'),
    info: await req.consumeFlash('info'),
    danger: await req.consumeFlash('danger'),
    warning: await req.consumeFlash('warning'),
  };
  next();
});

app.use('/', indexRouter);
app.use('/seguridad', routerSeguridad)
app.use('/usuario', usuarioRouter);
app.use('/search', buscadorRouter);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
