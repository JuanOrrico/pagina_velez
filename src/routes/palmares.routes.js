const express = require("express");
const router = express.Router();
const controller = require("../controllers/palmares.controller");

router.get("/", controller.getAll);
router.get("/:id", controller.getById);
router.post("/", controller.createTorneo);
router.put("/:id", controller.updateTorneo);
router.delete("/:id", controller.removeTorneo);

module.exports = router;
