// import { useState } from 'react'
// import reactLogo from './assets/react.svg'
// import viteLogo from './assets/vite.svg'
// import heroImg from './assets/hero.png'
import './App.css'
import FavoursList from "./features/favours/FavoursList"

function App() {
  return  (
      <>
        <div className="app">
          <h1>Favour-ite App</h1>
          <p>Find this application layout in client/src/App.jsx</p>
          <FavoursList />
        </div>
      </>
  );
}

export default App
