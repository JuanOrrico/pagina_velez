const service = require("../services/palmares.service");

exports.getAll = async (req, res) => {
  try {
    const palmares = await service.getAll();
    res.json(palmares);
  } catch (err) {
    res.status(500).json({ error: "No se encontró el " });
  }
};

exports.getById = async (req, res) => {
  try {
    const torneo = await service.getById(req.params.id);
    if (!torneo) res.status(404).json({ error: "No se encontro torneo" });
    res.json(torneo);
  } catch (err) {
    res.status(500).json({ error: "internal error 500" });
  }
};

exports.createTorneo = async (req, res) => {
  try {
    const newTorneo = await service.create(req.body);
    res.status(201).json(newTorneo);
  } catch (err) {
    res.status(500).json({ error: "Error al intentar crear" });
  }
};

exports.updateTorneo = async (req, res) => {
  try {
    const updated = await service.update(req.params.id, req.body);
    res.json(updated);
  } catch (err) {
    res.status(500).json({ Error: "No se pudo actualizar el torneo" });
  }
};

exports.removeTorneo = async (req, res) => {
  try {
    const deleted =await service.delete(req.params.id);
    res.json(deleted)
  } catch (err) {
    res.status(500).json({ Error: "No se pudo eliminar torneo" });
  }
};
