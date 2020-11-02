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
red_mask= Product.create!(product_name: "Red Mask", description: "Ethiopian print-Red Mask", category_id:mask.id, price: 50, image:"https://i.imgur.com/Tkk1uLR.png")
black_mask= Product.create!(product_name: "Black Mask", description: "Ethiopian print-Black Mask", category_id:mask.id, price: 50, image:"https://i.imgur.com/DfBTKSM.png")
black_kimono= Product.create!(product_name: "Black and white kimonos", description: "Black striped kimonos", category_id:kimonos.id, price: 110, image:"https://i.imgur.com/AhOmwcb.png")
black_scarf= Product.create!(product_name: "Black Scarf", description: "Black Ethiopian Scarf", category_id:scarf.id, price: 70, image:"https://i.imgur.com/s5s5TAo.png")
green_mask= Product.create!(product_name: "Green Mask", description: "Ethiopian Print Green Mask", category_id:mask.id, price: 50, image:"https://i.imgur.com/FxukGvk.png")
green_scarf= Product.create!(product_name: "Green Scarf", description: "Ethiopian Print Green Scarf", category_id:scarf.id, price:50, image:"https://i.imgur.com/S6fcGox.png")
green_mask= Product.create!(product_name: "Green Mask", description: "Ethiopian Print Forest Green Mask", category_id:mask.id, price:50, image:"https://i.imgur.com/h4VpS5I.png")
black_jumpsuit= Product.create!(product_name: "Black Jumpsuit", description: "Black Ethiopian Modern Jumpsuit", category_id:jumpsuit.id, price:110, image:"https://i.imgur.com/7TqljD6.png")
yellow_shirt= Product.create!(product_name: "Yellow Shirt", description: "Yellow Ethiopian Cotton Shirt", category_id:shirt.id, price:90, image:"https://i.imgur.com/C4AgUPU.png")
pink_striped_dress= Product.create!(product_name: "Pink Striped Dress", description: "Pink and White Striped Dress", category_id:dress.id, price:150, image:"https://i.imgur.com/8zVShPW.png")
black_and_white_kimono= Product.create!(product_name: "Black and White Kimono", description: "Black and White Kimono Ethiopian Print Kimono", category_id:kimonos.id, price:110 , image:"https://i.imgur.com/JXHdH5M.png")
pink_kimono= Product.create!(product_name: "Pink Kimono", description: "Pink Kimono-Ethiopian Traditional Print", category_id:kimonos.id, price:110, image:"https://i.imgur.com/ffn4xmn.png")
grey_maxi_dress= Product.create!(product_name: "Grey Maxi Dress", description: "Grey Loose Maxi Strapless Dress", category_id:dress.id, price:160, image:"https://i.imgur.com/0npqlLw.png")
black_wrap_dress= Product.create!(product_name: "Black Wrap Dress", description: "Black Ethiopian Wrap Dress", category_id:dress.id, price:150, image:"https://i.imgur.com/jaUOFag.png")
pastel_blue_pink_wrap_dress= Product.create!(product_name: "Pastel Blue Pink Wrap Dress", description: "Pastel Blue and Pink Wrap Dress", category_id:dress.id, price:150, image:"https://i.imgur.com/FHGkfFB.png")
pink_and_black_kimono= Product.create!(product_name: "Pink and Black Kimono", description: "Pink and Black Ethiopian Print Kimono", category_id:kimonos.id, price:110 , image:"https://i.imgur.com/MQ7OtUf.png")
black_and_white_jacket= Product.create!(product_name: "Black and White Jacket", description: "Black and White Ethiopian Jacket", category_id:jacket.id, price:170, image:"https://i.imgur.com/PnnZRdu.png")
yellow_wide_pants= Product.create!(product_name: "Yellow Wide Pants", description: "Yellow Wide Pants Pallazzo Style", category_id:pants.id, price:100 , image:"https://i.imgur.com/wSZwYYV.png")
black_and_white_dress= Product.create!(product_name: "Black and White Dress", description: "Black and White Wrap Dress", category_id:dress.id, price:120 , image:"https://i.imgur.com/pTwniDs.png")
pink_crop_top= Product.create!(product_name: "Pink Crop Top", description: "Pink Cotton Crop Top", category_id:shirt.id, price:90, image:"https://i.imgur.com/iarD80B.png")
pastel_blue_wrap_crop_top= Product.create!(product_name: "Pastel Blue Wrap Crop Top", description: "Pastel Cotton Blue Wrap Crop Top", category_id:shirt.id, price:90, image:"https://i.imgur.com/mYTZdoK.png")
pink_printed_kimono= Product.create!(product_name: "Pink Printed Kimono", description: "Pink and Black striped Ethiopian Traditional Style Kimono", category_id:kimonos.id, price:110, image:"https://i.imgur.com/RfO9Q8Y.png")
white_kimono= Product.create!(product_name: "White Kimono", description: "White Traditional Print Kimono", category_id:kimonos.id, price:110, image:"https://i.imgur.com/d7EceSz.png")
black_buttoned_dress= Product.create!(product_name: "Black Buttoned Dress", description: "Maxi Style Black Cotton Dress", category_id:dress.id, price:150, image:"https://i.imgur.com/jfVAN8e.png")
black_wide_pants= Product.create!(product_name: "Black Wide Pants", description: "Pallazo Style Cotton Black White Pants", category_id:pants.id, price:90, image:"https://i.imgur.com/NyK7tvB.png")
pink_stripped_kimono= Product.create!(product_name: "Pink Stripped Kimono", description: "Black and Pink Stripped Kimono", category_id:kimonos.id, price:110, image:"https://i.imgur.com/xAVRY45.png")
pink_dress= Product.create!(product_name: "Pink Dress", description: "Pink Ethiopian Print Dress", category_id:dress.id, price:120, image:"https://i.imgur.com/oKRoJh4.png")
black_and_white_bomber= Product.create!(product_name: "Black and White Bomber Jacket", description: "Black and White Bomber Style Jacket", category_id:jacket.id, price:170, image:"https://i.imgur.com/yAgoi0d.png")
shorter_bomber= Product.create!(product_name: "Short Bomber Jacket", description: "Short Black and White Bomber Jacket", category_id:jacket.id, price:165, image:"https://i.imgur.com/Jy4Pfgl.png")


# Seed for Order

order1= Order.create(cart_id:past_cart1.id, product_id:pink_kimono.id, quantity:1)
order2= Order.create(cart_id:past_cart1.id, product_id:pink_dress.id,quantity:1)
order3= Order.create(cart_id:past_cart2.id, product_id:black_and_white_bomber.id, quantity:1)
order4= Order.create(cart_id:cart1.id, product_id: white_kimono.id, quantity:1)

puts "I have seeded!"