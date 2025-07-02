const service = require("../services/jugadores.service");

exports.getAll = async (req, res) => {
  try {
    const jugadores = await service.getAll();
    res.json(jugadores);
  } catch (err) {
    res.status(500).json({ error: "Error de busqueda" });
  }
};

exports.getById = async (req, res) => {
  try {
    const jugador = await service.getById(req.params.id);

    if (!jugador) res.status(404).json({ error: "jugador no encontado" });
    res.json(jugador);
  } catch (err) {
    res.status(500).json({ error: "Sin servicio" });
  }
};

exports.createJugador = async (req, res) => {
  try {
    const newJugador = await service.create(req.body);

    res.status(201).json(newJugador);
  } catch (err) {
    res
      .status(500)
      .json({
        error: "No se pudo crear al jugador, revise los parametros solicitados",
      });
  }
};

exports.updateJugador = async (req, res) => {
  try {
    const updated = await service.update(req.params.id, req.body);

    res.json(updated);
  } catch (err) {
    res.status(500).json({ error: "No se pudo actualizar al jugador" });
  }
};

exports.removeJugador = async (req, res) => {
  try {
    const deleted = await service.delete(req.params.id);

    res.json(deleted);
  } catch (err) {
    res.status(500).json({ error: "No se pudo eliminar al jugador" });
  }
};
