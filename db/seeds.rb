# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  user = User.create({ name: "edward" }, { email: "edward.c.dickey@gmail.com" }, {password: "edward"})


  Brand.create(name: "Nike", logo:"")
  Brand.create(name: "Gucci", logo:"")
  Brand.create(name: "lululemon", logo:"")

  Product.create(name: "Free Run 3", price: 45, imageUrl: "", brand_id: 1)

  Review.create(product_id: 1, user_id:1, bio: "these Shoes suck, soles wear out too quick", rating: 3)
