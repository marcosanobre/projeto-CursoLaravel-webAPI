const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('grupo_videocurso', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    titulo: {
      type: DataTypes.STRING(100),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'grupo_videocurso',
    schema: 'public',
    timestamps: true,
    paranoid: true,
    indexes: [
      {
        name: "pkey_grupovideocurso",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
