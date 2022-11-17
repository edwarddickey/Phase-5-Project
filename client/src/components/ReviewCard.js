import { Link } from "react-router-dom";

import { useParams, useNavigate } from "react-router-dom";

function ReviewCard({ review }) {
  const { product_id, user_id, content, rating } = review;
  //const {name, image_url} = service
  //   should we also do rating? can't access it from the current table, though
  console.log(review);

  const navigate = useNavigate();
  return (
    <li className="review-card">
      <div className="review-card">
        <div className="row">
          <div className="col">
            <div className="card h-100">
              <div className="card-text">
                <h3>{content}</h3>
                
                  {" "}
                  <h2>{rating}/10</h2>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </li>
  );
}

export default ReviewCard;
