// API_URL comes from .env.development file
import React, {useState, useEffect } from "react";
import { API_URL } from "../../constants";

function FavoursList() {
    const [favours, setFavours] = useState([]);
    const [, setLoading] = useState(true);
    const [, setError] = useState(null);
  // Fetch favours from the API
    useEffect(() => {
      async function loadFavours() {
        try {
          const response = await fetch(API_URL);
          if (response.ok) {
            const json = await response.json();
            setFavours(json);
          } else {
            throw response;
          }
        } catch (e) {
          setError("An error occurred while fetching favours.");
          console.log("An error occured:", e);
        } finally {
          setLoading(false);
        }
      }
      loadFavours();
    }, []);

  return (
    <div>
      {favours.map((favour) => (
        <div key={favour.id} className= "favour-container">
          <h2>{favour.title}</h2>
          <p>{favour.description}</p>
        </div>
      ))}
    </div>
  );
}

export default FavoursList;
