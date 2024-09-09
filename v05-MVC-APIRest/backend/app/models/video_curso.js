const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('video_curso', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    titulo: {
      type: DataTypes.STRING(150),
      allowNull: false
    },
    descricao: {
      type: DataTypes.STRING(150),
      allowNull: true
    },
    url: {
      type: DataTypes.STRING(200),
      allowNull: false
    },
    imagem: {
      type: DataTypes.STRING(200),
      allowNull: true
    },
    video_id: {
      type: DataTypes.STRING(15),
      allowNull: true
    },
    playlist_id: {
      type: DataTypes.STRING(100),
      allowNull: true
    },
    tamanho_min: {
      type: DataTypes.STRING(10),
      allowNull: true
    },
    tamanho_ms: {
      type: DataTypes.STRING(10),
      allowNull: true
    },
    id_grupo: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'grupo_videocurso',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'video_curso',
    schema: 'public',
    timestamps: true,
    paranoid: true,
    indexes: [
      {
        name: "pkey_videocurso",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
