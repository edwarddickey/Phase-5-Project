import { useParams, useNavigate } from "react-router-dom";
import React, { useState, useEffect, useContext, createContext } from "react";
import ProductList from "./ProductList";
import "../App.css";

const ProductContext = createContext();

function ProductsPage() {
  const [products, setProducts] = useState([]);
  const [id, setId] = useState("");
  const [winner, setWinner] = useState([]);

  const [switchTrue, setSwitchTrue] = useState(false);
  const [teamId, setTeamId] = useState(null);
  const [teamName, setTeamName] = useState("");
  const [display, setDisplay] = useState(false);
  const [image_url, setImageUrl] = useState("");
  const params = useParams();
  const history = useNavigate();

  useEffect(() => {
    fetch(`/products`)
      .then((r) => r.json())
      .then((products) => setProducts(products));
  }, []);

  const deliveryPage = (
    <ProductContext.Provider value={products}>
      <div className="delivery-page">
        <div className="main-column">
          <div className="team-header"></div>
          <ProductList products={products} />
        </div>
      </div>
    </ProductContext.Provider>
  );

  const productsPage = (
    <div className="main-column">
      <div className="team-header">
        <span role="img">
          <a href="/">
            <img
              className="delivery-picture"
              src="https://logos-world.net/wp-content/uploads/2020/12/Yelp-Logo.png"
            ></img>
          </a>
        </span>
      </div>
      <div className="sponsored-team">
        <p className="sponsor-text">Products</p>
      </div>
      {deliveryPage}
    </div>
  );

  function handleProductClick() {
    setSwitchTrue(!switchTrue);
    console.log(switchTrue);
  }
  return <div>{productsPage}</div>;
}

export default ProductsPage;
