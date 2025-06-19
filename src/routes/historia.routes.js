const express = require("express");
const router = express.Router();

const controller = require('../controllers/historia.controller')

router.get('/', controller.getAll);
router.post('/', controller.update)

module.exports = router;