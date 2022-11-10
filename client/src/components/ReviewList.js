import React from "react";
import ReviewCard from "./ReviewCard";

function ReviewList({ reviews }) {
  console.log(reviews);

  return (
    // <div></div>
    <ul className="cards">
      {reviews.map((review) => {
        return <ReviewCard key={review.id} review={review} />;
      })}
    </ul>
  );
}

export default ReviewList;
