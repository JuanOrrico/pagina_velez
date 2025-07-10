require('dotenv').config()
const express = require('express')
const app = express()
const cors = require("cors")

const jugadoresRouter = require('./src/routes/jugadores.routes')
const palmaresRouter = require('./src/routes/palmares.routes')
const historiaRouter = require('./src/routes/historia.routes')
const path= require("path")

const PORT = process.env.PORT || 3000;

app.use(cors({
  origin: 'http://localhost:5173',
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization'],
}))
app.use(express.json())

app.use("/jugadores", jugadoresRouter)
app.use('/palmares', palmaresRouter)
app.use('/historia', historiaRouter)
app.use('/img', express.static(path.join(__dirname, '/src/public/img')));
app.use('/img/copas/locales', express.static(path.join(__dirname, 'public', 'img', 'copas', 'locales')));
app.use('/img/copas/internacionales', express.static(path.join(__dirname, 'public', 'img', 'copas', 'internacionales')));
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});