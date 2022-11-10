import { useParams, useNavigate } from "react-router-dom";
import React, { useState, useEffect } from "react";
import ProductList from "./ProductList";
import "../App.css";
import ReviewList from "./ReviewList";

function ProductDetail() {
  const [product, setProduct] = useState({ brand: {},reviews: [] });
  const params = useParams();
  const history = useNavigate();



  useEffect(() => {
    fetch(`/products/${params.id}`)
      .then((r) => r.json())
      .then((product) => {
        setProduct(product)
      });
  }, []);

  // const detailPage = (
  //   <div className="delivery-page">
  //     <div className="main-column">
  //       <div className="team-header"></div>
  //       
  //     </div>
  //   </div>
  // );

  // const productsHeader = (
  //   <div className="main-column">
  //     <div className="team-header">
  //       <span role="img">
  //         <a href="/">
  //           <img
  //             className="delivery-picture"
  //             src="https://logos-world.net/wp-content/uploads/2020/12/Yelp-Logo.png"
  //           ></img>
  //         </a>
  //       </span>
  //     </div>
  //     <div className="sponsored-team">
  //       <p className="sponsor-text">Products</p>
  //     </div>
  //     {detailPage}

  //
  //   </div>
  // );
  // if (!product) {
  //   return <div>loading...</div>;
  // }
  return (
    <div>
      <ReviewList reviews={product.reviews} />
    </div>
  );
}

export default ProductDetail;
