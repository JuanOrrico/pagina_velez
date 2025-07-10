import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';

import Nav from "./components/nav/Nav"
import App from "./App"
import Footer from "./components/footer/Footer"
import './index.css';



createRoot(document.getElementById('root')!).render(
	<StrictMode>	
		<App />	
	</StrictMode>
);