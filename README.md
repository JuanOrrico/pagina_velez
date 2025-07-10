# 📘 proyecto_velez

Este proyecto es una API REST creada con Node.js y Express que gestiona información relacionada con el **Club Atlético Vélez Sarsfield**. Utiliza una base de datos MySQL que contiene tres tablas principales: `jugadores`, `historia` y `palmares`.

## 🧾 Descripción

El proyecto permite realizar operaciones CRUD sobre la información del club a través de endpoints REST. Está pensado como una herramienta para visualizar y administrar datos actuales y relevantes del club, su historia y sus logros deportivos.

### Tablas del proyecto

- **jugadores**: contiene información de los jugadores actuales del plantel profesional.  
- **historia**: describe la historia del club, la historia del estadio, su capacidad y ubicación.  
- **palmares**: incluye los títulos nacionales e internacionales obtenidos por el club.

## 🛠️ Tecnologías utilizadas

- Node.js
- Express
- MySQL2
- dotenv
- nodemon
- cors

## 🔧 Instalación

1. Cloná el repositorio:
   ```bash
   git clone https://github.com/JuanOrrico/proyecto_velez.git
   cd proyecto_velez
```
2.
```bash 
npm install
```
3. 
```bash
DB_HOST=localhost
DB_USER=tu_usuario
DB_PASSWORD=tu_contraseña
DB_NAME=nombre_de_la_base
```
4. 
```bash
npm run dev
```

## 📡 Endpoints disponibles
Tabla: jugadores
GET /jugadores — Obtener todos los jugadores

GET /jugadores/:id — Obtener un jugador por ID

POST /jugadores — Agregar un nuevo jugador

PUT /jugadores/:id — Actualizar un jugador

DELETE /jugadores/:id — Eliminar un jugador

Tabla: historia
GET /historia — Obtener información histórica

PUT /historia — Actualizar información histórica

Tabla: palmares
GET /palmares — Obtener todos los títulos

GET /palmares/:id — Obtener un título por ID

POST /palmares — Agregar un nuevo título

PUT /palmares/:id — Actualizar un título

DELETE /palmares/:id — Eliminar un título

👨‍💻 Autor
Desarrollado por Juan Orrico

