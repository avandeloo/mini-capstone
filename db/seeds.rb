User.create!([
  {name: "Anne Johnson", email: "annejohnson@gmail.com", password: "password", password_confirmation: "password", admin: false},
  {name: "Charlie Chaplin", email: "charliechaplin@gmail.com", password: "password", password_confirmation: "password", admin: false},
  {name: "James John", email: "jamesjohn@gmail.com", password: "password", password_confirmation: "password", admin: true}
])

Supplier.create!([
  {name: "Joe Johnson", email: "joejohnson@gmail.com", phone: "234 445-8892"},
  {name: "Giovanni Gregorrio", email: "giovannigregorrio@gmail.com", phone: "532 223-6654"},
  {name: "Joanne Marie", email: "joannemarie@gmail.com", phone: "335 556-9972"},
  {name: "Joe Johnson", email: "joejohnson@gmail.com", phone: "234 445-8892"},
  {name: "Giovanni Gregorrio", email: "giovannigregorrio@gmail.com", phone: "532 223-6654"},
  {name: "Anne Marie", email: "annemarie@gmail.com", phone: "335 556-9972"}
])
User.create!([
  {name: "James John", email: "jamesjohn@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Anne Johnson", email: "annejohnson@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Charlie Chaplin", email: "charliechaplin@gmail.com", password: "password", password_confirmation: "password"}
])

Product.create!([
  {name: "Wolfenstein 3D", price: "25.0", description: "Wolfenstein 3D is a first-person shooter video game developed by id Software and published by Apogee Software and FormGen.", release_date: "05/05/92", in_stock: nil, supplier_id: 1},
  {name: "Doom", price: "60.0", description: "Fight back the legions of hell in a first-person shooter.", release_date: "05/10/93", in_stock: nil, supplier_id: 1, },
  {name: "Serious Sam", price: "65.0", description: "Serious Sam is a first-person shooter video game, released in two episodes and the first in the Serious Sam series, developed by Croteam.", release_date: "03/21/01", in_stock: nil, supplier_id: 1},
  {name: "Quake", price: "50.0", description: "Quake is a first-person shooter video game, developed by id Software and published by GT Interactive.", release_date: "06/22/96", in_stock: nil, supplier_id: 2},
  {name: "God of War", price: "25.0", description: "God of War is an action-adventure video game series loosely based on Greek mythology, originally created by David Jaffe at Sony's Santa Monica Studio.", release_date: "03/22/05", in_stock: nil, supplier_id: 2},
  {name: "Cheapo", price: "1.0", description: "Man talk about cheap...", release_date: "01/24/17", in_stock: nil, supplier_id: 3},
  {name: "Duke Nukem 3D", price: "40.0", description: "Duke Nukem 3D is a first-person shooter video game developed by 3D Realms and published by GT Interactive Software.", release_date: "01/29/96", in_stock: nil, supplier_id: 3}
])

Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/en/0/05/Wolfenstein-3d.jpg", product_id: 1},
  {url: "http://www.mobygames.com/images/covers/l/3907-doom-dos-front-cover.jpg", product_id: 2},
  {url: "https://upload.wikimedia.org/wikipedia/en/7/7f/Serious_Sam_-_The_First_Encounter_-_US_Windows_box_art_-_Croteam.jpg", product_id: 3},
  {url: "https://upload.wikimedia.org/wikipedia/en/4/4c/Quake1cover.jpg", product_id: 4},
  {url: "http://ocremix.org/files/images/games/ps2/4/god-of-war-ps2-cover-front-50530.jpg", product_id: 5},
  {url: "https://easybadges.com/wp-content/uploads/2015/07/cheap-cheap-chicken.jpg", product_id: 6},
  {url: "http://vignette3.wikia.nocookie.net/dukenukem/images/7/70/DukeNukem3D.jpg/revision/latest?cb=20080813235545", product_id: 7}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "845.0", tax: "76.05", total: "921.05"},
  {user_id: 1, subtotal: "100.0", tax: "9.0", total: "109.0"},
  {user_id: 1, subtotal: "280.0", tax: "25.2", total: "305.2"}
])

Category.create!([
  {name: "First-Person"},
  {name: "Third-Person"},
  {name: "Action-Adventure"},
  {name: "Shooter"}
])

ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 4},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 4},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 4},
  {product_id: 4, category_id: 1},
  {product_id: 4, category_id: 4},
  {product_id: 5, category_id: 2},
  {product_id: 5, category_id: 3},
  {product_id: 6, category_id: 2},
  {product_id: 6, category_id: 3},
  {product_id: 7, category_id: 1},
  {product_id: 7, category_id: 4}

  ])

