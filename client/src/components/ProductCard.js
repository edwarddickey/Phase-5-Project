import { Link } from "react-router-dom";

import { useParams, useNavigate } from "react-router-dom";

function ProductCard({ product }) {
  const { name, price, imageUrl, brand_id } = product;
  //const {name, image_url} = service
  //   should we also do rating? can't access it from the current table, though
  console.log(product);

  const navigate = useNavigate();
  return (
    <li className="individual-card">
      <div className="container-card">
        <div className="row">
          <div className="col">
            <div className="card h-100">
              <img
                className="card-image"
                variant="top"
                src={imageUrl}
                alt={product}
              />
              <div className="card-text">
                <h3>{price}</h3>
                <Link to={`/products/${product.id}`}>
                  {" "}
                  <h2>{name}</h2>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </li>
  );
}

export default ProductCard;
