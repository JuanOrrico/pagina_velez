require('dotenv').config()
const express = require('express')
const app = express()
const jugadoresRouter = require('./src/routes/jugadores.routes')
const palmaresRouter = require('./src/routes/palmares.routes')
const historiaRouter = require('./src/routes/historia.routes')
const path= require("path")

const PORT = process.env.PORT || 3000;


app.use(express.json())

app.use("/jugadores", jugadoresRouter)
app.use('/palmares', palmaresRouter)
app.use('/historia', historiaRouter)
app.use('/img', express.static(path.join(__dirname, '/src/public/img')));

app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});