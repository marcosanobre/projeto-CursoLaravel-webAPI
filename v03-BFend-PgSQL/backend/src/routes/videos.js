const express = require('express');

const VideoController = require("../controllers/VideoController");

const router = express.Router();

router.get("/videos", VideoController.index);

module.exports = router;

