Product.create!([

  {name: "Brian Rice", price: 4, description: "desc", image: "image", supplier_id: 1, user_id: 1},
  {name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", image: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", supplier_id: 1, user_id: 1},
  {name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", supplier_id: 1, user_id: 1},
  {name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!", image: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", supplier_id: 1, user_id: 1},
  {name: "Hitchhiker's Guide to the Galexy", price: 42, description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", image: "http://www.notcot.com/images/guide.gif", supplier_id: 1, user_id: 1},
  {name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders", image: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", supplier_id: 1, user_id: 1},
  {name: "Lightsabe", price: 270, description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", image: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", supplier_id: 1, user_id: 1},
  {name: "name", price: 4, description: "des", image: "image", supplier_id: 1, user_id: 1},
  {name: "name", price: 2, description: "descrop", image: "image", supplier_id: 1, user_id: 1},
  {name: "name", price: 4, description: "desc", image: "image", supplier_id: 1, user_id: 1}
])
CartedProduct.create!([
  {status: "removed", user_id: 1, product_id: 1, quantity: 1, order_id: 1},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 1, order_id: 7},
  {status: "purchased", user_id: 1, product_id: 5, quantity: 12, order_id: 7},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 2, order_id: 7},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 3, order_id: 8},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 1, order_id: 9},
  {status: "removed", user_id: 1, product_id: 2, quantity: 2, order_id: nil},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 2, order_id: 10},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 3, order_id: 11},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 2, order_id: 12},
  {status: "purchased", user_id: 1, product_id: 1, quantity: 10, order_id: 13},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 2, order_id: 14},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 15},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 4, order_id: 16},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 17},
  {status: "purchased", user_id: 1, product_id: 3, quantity: 2, order_id: 18},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 19},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 21},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 22},
  {status: "purchased", user_id: 1, product_id: 2, quantity: 1, order_id: 23},
  {status: "carted", user_id: 1, product_id: 1, quantity: 1, order_id: nil}
])
CategorizedProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 2},
  {product_id: 5, category_id: 2},
  {product_id: 5, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 7, category_id: 2},
  {product_id: 8, category_id: 1},
  {product_id: 6, category_id: 2},
  {product_id: 8, category_id: 2}
])
Category.create!([
  {name: "Weapon"},
  {name: "Kids"}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "999.0", tax: nil, total: "999.0"},
  {user_id: 1, subtotal: "531.0", tax: "47.79", total: "578.79"},
  {user_id: 1, subtotal: "810.0", tax: "72.9", total: "882.9"},
  {user_id: 1, subtotal: "9.0", tax: "0.81", total: "9.81"},
  {user_id: 1, subtotal: "0.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "0.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "3.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "0.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "1.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "1.0", tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "270.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "4.0", tax: "0.36", total: "4.36"},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "270.0", tax: "24.3", total: "294.3"}
])
Supplier.create!([
  {name: "amazon", email: "am@zon.com", phone_number: "8675309"}
])
User.create!([
  {username: "joe", password_digest: "$2a$10$O5Zvg/VdZ5lhuCPhYeQUCOxq84VRe3bwSy4Kn2vp08Ff9jW6MsxI2", email: "joe", admin: true}
])
