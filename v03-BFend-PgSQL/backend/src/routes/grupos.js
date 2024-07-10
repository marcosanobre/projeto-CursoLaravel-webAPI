const express = require('express');

const GrupoController = require("../controllers/GrupoController.js");

const router = express.Router();

router.get("/grupos", GrupoController.index);

module.exports = router;

