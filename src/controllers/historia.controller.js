const service = require('../services/historia.service')


exports.getAll = async (req, res) =>{
    try{
        const historia = await service.getAll()
        res.json(historia)
    }catch(err){
        res.status(500).json({error: 'no se encontro nada'})
    }
}

exports.update = async (req, res) => {
 try{
    const updated = await service.update(req.body)
    res.json(updated)
 }catch(err){
    res.status(500).json({error: 'No se pudo actualizar nada'})
 }

}