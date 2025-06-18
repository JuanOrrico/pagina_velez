const express = require("express");
const router = express.Router();
const controller = require("../controllers/jugadores.controller");

router.get("/", controller.getAll);
router.get("/:id", controller.getById);
router.post("/", controller.createJugador);
router.put("/:id", controller.updateJugador);
router.delete("/:id", controller.removeJugador);

module.exports = router;
