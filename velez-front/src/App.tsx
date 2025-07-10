import { BrowserRouter, Routes, Route} from 'react-router-dom';
import Inicio from "./pages/home/Index"
import Jugadores from "./pages/jugadores/Equipo"
import Palmares from "./pages/palmares/Palmares"
import Nav from "./components/nav/Nav"
import Footer from "./components/footer/Footer"  
import "./index.css"

  export default function App() {

      return (
        <BrowserRouter> 
          <Nav />
          <Routes>
            <Route path="/" element={<Inicio />} />
            <Route path="/Jugadores" element={<Jugadores />} />
            <Route path="/Palmares" element={<Palmares />} />
          </Routes>
          <Footer />
        </BrowserRouter>
      )
    }