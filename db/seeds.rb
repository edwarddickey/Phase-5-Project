# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  user = User.create( name: "edward" ,  email: "edward.c.dickey@gmail.com" , password: "edward")


  Brand.create(name: "Nike", logo:"")
  Brand.create(name: "Gucci", logo:"")
  Brand.create(name: "lululemon", logo:"")


  # Product.create(name: "Nike Blazer", price: 105, imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/95e18673-aaa2-47b4-93a7-452c176ad476/blazer-mid-77-vintage-mens-shoes-nw30B2.png", brand_id: 1)
  # Product.create(name: "Air Jordan 1 Low", price: 110, imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/93fd72d0-516d-40af-8204-3879a7f10036/air-jordan-1-low-mens-shoes-hvs8vl.png", brand_id: 1)
  # Product.create(name: "Nike Blazer", price: 105, imageUrl: "", brand_id: 1)
  # Product.create(name: "Nike Blazer", price: 105, imageUrl: "", brand_id: 1)

  Product.create(name: "Free Run 3", price: 45, imageUrl: "https://images.stockx.com/images/Nike-Free-Run-3-Pure-Platinum-GS.jpg?fit=fill&bg=FFFFFF&w=576&h=384&fm=avif&auto=compress&dpr=1&trim=color&updated_at=1626899837&q=57", brand_id: 1)
  Product.create(name: "ABC Pant", price: 120, imageUrl: "https://pyxis.nymag.com/v1/imgs/68d/41c/779b791343d53fde78656af60fa122d97a-31-pants-ode.2x.rhorizontal.w700.jpg", brand_id: 3)
  Product.create(name: "Surge Jogger", price: 118, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM5956S_048432_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "At Ease Jogger", price: 128, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM5AIYS_047759_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Fast and Free Lined Short 6in", price: 88, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM7AU8S_017804_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Pace Breaker Linerless Short 7in", price: 68, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM7AGXS_058323_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Licence to Train Linerless Short 7in", price: 88, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM7AUKS_053564_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Everywhere Belt Bag", price: 38, imageUrl: "https://images.lululemon.com/is/image/lululemon/LU9AX2S_0001_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Metal Vent Tech Polo Shirt 2.0", price: 88, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM3CS9S_039776_1?wid=1280&op_usm=0.5,2,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Everyday Backpack", price: 98, imageUrl: "https://images.lululemon.com/is/image/lululemon/LU9ALTS_045657_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Gridliner Fleece Overshirt", price: 178, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM3DTBS_056829_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Vented Tennis Polo Shirt", price: 69, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM3DMBS_053553_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Men's Fast and Free Running Hat Elite", price: 48, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM9AAES_0001_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)
  Product.create(name: "Men's Days Shade Ball Cap", price: 38, imageUrl: "https://images.lululemon.com/is/image/lululemon/LM9AO3S_020111_1?$product_tile$&wid=750&op_usm=0.8,1,10,0&fmt=webp&qlt=80,1&fit=constrain,0&op_sharpen=0&resMode=sharp2&iccEmbed=0&printRes=72", brand_id: 3)

  Review.create(product_id: 1, user_id:1, content: "these Shoes suck, soles wear out too quick", rating: 3)
  Review.create(product_id: 2, user_id:1, content: "Great pants. Very compfy and stylish", rating: 8)
  Review.create(product_id: 2, user_id:1, content: "Love these. wear them to flatiron every day", rating: 10)
  Review.create(product_id: 3, user_id:1, content: "very good for working out", rating: 8)
  Review.create(product_id: 3, user_id:1, content: "very breathable and great for lounging", rating: 9)
  Review.create(product_id: 4, user_id:1, content: "great athletic jogger, great for exercise", rating: 8)
  Review.create(product_id: 4, user_id:1, content: "material too thin, rips easily", rating: 3)
  Review.create(product_id: 4, user_id:1, content: "great to wear around the house, very compfy", rating: 7)
  Review.create(product_id: 5, user_id:1, content: "these shorts are great for running", rating: 8)
  Review.create(product_id: 5, user_id:1, content: "I realize these are for running but it would be nice to have pockets", rating: 5)
  Review.create(product_id: 1, user_id:1, content: "I love these shoes fit well and mold to your sole", rating: 8)
  Review.create(product_id: 10, user_id:1, content: "great backpack very stylish and useful", rating: 9)

puts "done seeding"