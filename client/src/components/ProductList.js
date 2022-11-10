import { React, useContext } from "react";
import ProductCard from "./ProductCard";
import ProductContext from "./ProductsPage";

function ProductList({ products }) {
  // const {products} = useContext(ProductContext);

  // console.log(products)

  return (
    // <div></div>
    <ul className="cards">
      {products.map((product) => {
        return <ProductCard key={product.id} product={product} />;
      })}
    </ul>
  );
}

export default ProductList;
