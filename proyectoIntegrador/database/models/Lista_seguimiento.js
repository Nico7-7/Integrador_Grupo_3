module.exports = (sequelize, DataTypes) => {
    let alias = 'Lista_seguimiento';

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        id_producto: {
            type: DataTypes.INTEGER
        },
        id_usuario: {
            type: DataTypes.INTEGER
        }
    }

    let config = {
        tableName: 'lista_seguimiento',
        timestamps: false
    }

    const Listaseguimiento = sequelize.define(alias, cols, config);

    // Producto.associate = function(models){
        //Producto.belongsTo(models.Usuario, {
        //    as: 'id_producto',
         //   foreignKey: 'id_producto'
       // })
  //  }

    return Listaseguimiento
}