const db = require('../database/models');
const op = db.Sequelize.Op;

const controller = {
    search: function(req, res, next){
        let buscador = req.query.search;
        db.Producto.findAll({
            where: {[op.or]: 
                [{nombre_producto:  {[op.like]: '%'+buscador+'%'}}, 
                {descripcion_larga:  {[op.like]: '%'+buscador+'%'}}]
            }, 
            include: [{
                association: 'producto_usuario'
            }]
        })
        .then((cripto)=> {
            return res.render('resultados-busqueda', {
                cripto,
                buscador
            })
        })
    }
}

module.exports = controller