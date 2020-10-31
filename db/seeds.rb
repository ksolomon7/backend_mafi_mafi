#dependent models have to be destroyed first

Order.destroy_all
Cart.destroy_all
User.destroy_all
Product.destroy_all
Category.destroy_all

User.reset_pk_sequence
Category.reset_pk_sequence
Cart.reset_pk_sequence
Product.reset_pk_sequence
Order.reset_pk_sequence


# Seed for User
daisy= User.create(username: "daisy123", first_name: "Kalkidan", last_name:"Taye", email:"ksolomon@gmail.com", password: "1234", address:"123 Checkers Rd", state: "New York", city: "New York", zipcode: 10027)
peter= User.create(username: "peter12", first_name: "Peter", last_name:"Pan", email:"peterpan@neverland.com", password: "1234", address:"107 West 59th street", state: "New York", city: "New York", zipcode: 10019)

#Seed for cart
cart1= Cart.create!(user_id:daisy.id, history: false)
cart2= Cart.create!(user_id:peter.id, history:false)
past_cart1= Cart.create!(user_id:daisy.id, history:true)
past_cart2= Cart.create!(user_id: peter.id, history:true)

#seed for category:
mask= Category.create(style:"Mask")
dress=Category.create(style:"Dress")
kimonos= Category.create(style:"Kimono")
jacket= Category.create(style:"Jacket")
jumpsuit=Category.create(style:"Jumpsuit")
pants= Category.create(style:"Pant")
shirt= Category.create(style:"Shirt")
scarf=Category.create(style:"Scarf")

#Seed for product
red_mask= Product.create!(product_name: "Red Mask", description: "Ethiopian print-Red Mask", category_id:mask.id, price: 50, image:"https://imgur.com/a/qTyPL2K")
black_mask= Product.create!(product_name: "Black Mask", description: "Ethiopian print-Black Mask", category_id:mask.id, price: 50, image:"https://imgur.com/a/QrNgH9T")
black_kimono= Product.create!(product_name: "Black and white kimonos", description: "Black striped kimonos", category_id:kimonos.id, price: 110, image:"https://imgur.com/a/JxhBnzb")
black_scarf= Product.create!(product_name: "Black Scarf", description: "Black Ethiopian Scarf", category_id:scarf.id, price: 70, image:"https://imgur.com/a/N5vpb46")
green_mask= Product.create!(product_name: "Green Mask", description: "Ethiopian Print Green Mask", category_id:mask.id, price: 50, image:"https://imgur.com/a/ESGiqbq")
green_scarf= Product.create!(product_name: "Green Scarf", description: "Ethiopian Print Green Scarf", category_id:scarf.id, price:50, image:"https://imgur.com/a/39rV1sM")
green_mask= Product.create!(product_name: "Green Mask", description: "Ethiopian Print Forest Green Scarf", category_id:mask.id, price:50, image:"https://imgur.com/a/veSu9zy ")
black_jumpsuit= Product.create!(product_name: "Black Jumpsuit", description: "Black Ethiopian Modern Jumpsuit", category_id:jumpsuit.id, price:110, image:"https://imgur.com/a/i5DTw59")
yellow_shirt= Product.create!(product_name: "Yellow Shirt", description: "Yellow Ethiopian Cotton Shirt", category_id:shirt.id, price:90, image:"https://imgur.com/a/oKvnF8H")
pink_striped_dress= Product.create!(product_name: "Pink Striped Dress", description: "Pink and White Striped Dress", category_id:dress.id, price:150, image:"https://imgur.com/a/Zr2PMZw")
black_and_white_kimono= Product.create!(product_name: "Black and White Kimono", description: "Black and White Kimono Ethiopian Print Kimono", category_id:kimonos.id, price:110 , image:"https://imgur.com/a/BwmG0OD")
pink_kimono= Product.create!(product_name: "Pink Kimono", description: "Pink Kimono-Ethiopian Traditional Print", category_id:kimonos.id, price:110, image:"https://imgur.com/a/iKVxzQE")
grey_maxi_dress= Product.create!(product_name: "Grey Maxi Dress", description: "Grey Loose Maxi Strapless Dress", category_id:dress.id, price:160, image:"https://imgur.com/a/jmNlX0o")
black_wrap_dress= Product.create!(product_name: "Black Wrap Dress", description: "Black Ethiopian Wrap Dress", category_id:dress.id, price:150, image:"https://imgur.com/a/xxtpwzs")
pastel_blue_pink_wrap_dress= Product.create!(product_name: "Pastel Blue Pink Wrap Dress", description: "Pastel Blue and Pink Wrap Dress", category_id:dress.id, price:150, image:"https://imgur.com/a/JqS25Nn")
pink_and_black_kimono= Product.create!(product_name: "Pink and Black Kimono", description: "Pink and Black Ethiopian Print Kimono", category_id:kimonos.id, price:110 , image:"https://imgur.com/a/h3wF6Pm")
black_and_white_jacket= Product.create!(product_name: "Black and White Jacket", description: "Black and White Ethiopian Jacket", category_id:jacket.id, price:170, image:"https://imgur.com/a/kPyMQ3z")
yellow_wide_pants= Product.create!(product_name: "Yellow Wide Pants", description: "Yellow Wide Pants Pallazzo Style", category_id:pants.id, price:100 , image:"https://imgur.com/a/aT31Nj2")
black_and_white_dress= Product.create!(product_name: "Black and White Dress", description: "Black and White Wrap Dress", category_id:dress.id, price:120 , image:"https://imgur.com/a/RoyW6O0")
pink_crop_top= Product.create!(product_name: "Pink Crop Top", description: "Pink Cotton Crop Top", category_id:shirt.id, price:90, image:"https://imgur.com/a/c2TLhp5")
pastel_blue_wrap_crop_top= Product.create!(product_name: "Pastel Blue Wrap Crop Top", description: "Pastel Cotton Blue Wrap Crop Top", category_id:shirt.id, price:90, image:"https://imgur.com/a/KGJaidH")
pink_printed_kimono= Product.create!(product_name: "Pink Printed Kimono", description: "Pink and Black striped Ethiopian Traditional Style Kimono", category_id:kimonos.id, price:110, image:"https://imgur.com/a/mpiVM2u")
white_kimono= Product.create!(product_name: "White Kimono", description: "White Traditional Print Kimono", category_id:kimonos.id, price:110, image:"https://imgur.com/a/lVeSjKY")
black_buttoned_dress= Product.create!(product_name: "Black Buttoned Dress", description: "Maxi Style Black Cotton Dress", category_id:dress.id, price:150, image:"https://imgur.com/a/ok3FZq4")
black_wide_pants= Product.create!(product_name: "Black Wide Pants", description: "Pallazo Style Cotton Black White Pants", category_id:pants.id, price:90, image:"https://imgur.com/a/DlH3Fqx")
pink_stripped_kimono= Product.create!(product_name: "Pink Stripped Kimono", description: "Black and Pink Stripped Kimono", category_id:kimonos.id, price:110, image:"https://imgur.com/a/rqPzCl2")
pink_dress= Product.create!(product_name: "Pink Dress", description: "Pink Ethiopian Print Dress", category_id:dress.id, price:120, image:"https://imgur.com/a/hnou5Vb")
black_and_white_bomber= Product.create!(product_name: "Black and White Bomber Jacket", description: "Black and White Bomber Style Jacket", category_id:jacket.id, price:170, image:"https://imgur.com/a/XMi1hMB")
shorter_bomber= Product.create!(product_name: "Short Bomber Jacket", description: "Short Black and White Bomber Jacket", category_id:jacket.id, price:165, image:"https://imgur.com/a/rKm7tYX")


# Seed for Order

order1= Order.create(cart_id:past_cart1.id, product_id:pink_kimono.id, quantity:1)
order2= Order.create(cart_id:past_cart1.id, product_id:pink_dress.id,quantity:1)
order3= Order.create(cart_id:past_cart2.id, product_id:black_and_white_bomber.id, quantity:1)
order4= Order.create(cart_id:cart1.id, product_id: white_kimono.id, quantity:1)

puts "I have seeded!"