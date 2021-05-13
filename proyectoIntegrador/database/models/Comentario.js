module.exports = (sequelize, DataTypes) => {
    let alias = 'Comentario';

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        texto: {
            type: DataTypes.STRING
        },
        fecha_comentado: {
            type: DataTypes.DATE
        },
        id_usuario_comentador: {
            type: DataTypes.INTEGER
        },
        id_producto: {
            type: DataTypes.INTEGER
        }
    }

    let config = {
        tableName: 'comentarios'
    }

    const Comentario = sequelize.define(alias, cols, config);

    return Comentario
}