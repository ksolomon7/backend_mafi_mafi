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
daisy= User.create(username: "daisy123", first_name: "Kalkidan", last_name:"Taye", password: "1234", state: "New York", zipcode: 10027)
peter= User.create(username: "peter12", first_name: "Peter", last_name:"Pan", password: "1234", state: "New York", zipcode: 10019)

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
red_mask= Product.create!(product_name: "Red Mask", description: "Red Ethiopian printed mask. A combination of functionality and style. Part of our vintage styled mask collection.", category_id:mask.id, price: 50, image:"https://i.imgur.com/Tkk1uLR.png")
black_mask= Product.create!(product_name: "Black Mask", description: "Black Ethiopian printed mask. Made of Ethiopian cotton blend. Part of our sustainable collection, handwoven fabric. ", category_id:mask.id, price: 50, image:"https://i.imgur.com/DfBTKSM.png")
black_kimono= Product.create!(product_name: "Black and white kimonos", description: "Step into holiday mode with apparel that flaunts effortless casual. Slip on this Ethiopian Print kimono over your shoulders when heading from the pool to the patio bar.", category_id:kimonos.id, price: 110, image:"https://i.imgur.com/AhOmwcb.png")
black_scarf= Product.create!(product_name: "Black Scarf", description: "This lightweight, generously proportioned design is crafted in a soft, smooth blend of silk and cotton in a custom-woven Ethiopian design. Finished with delicate fringe trim, it features our Signature for heritage style.", category_id:scarf.id, price: 70, image:"https://i.imgur.com/s5s5TAo.png")
green_mask= Product.create!(product_name: "Green Mask", description: "Forest Green Ethiopian printed mask. A combination of functionality and style. Part of our vintage styled mask collection.", category_id:mask.id, price:50, image:"https://i.imgur.com/h4VpS5I.png")
shorter_bomber= Product.create!(product_name: "Short Bomber Jacket", description: "Short Black and White Bomber Jacket.Wind- and water-resistant cozy bomber jacket with lined interior that provides comfort during light to moderate activity in temperature ranges of 3 to 26 degrees. Recycled fill, zip-up front, side pockets, cinched hem and embroidered icon detail.", category_id:jacket.id, price:165, image:"https://i.imgur.com/Jy4Pfgl.png")
green_scarf= Product.create!(product_name: "Green Scarf", description: "Green Ethiopian printed mask. Made of Ethiopian cotton blend. Part of our sustainable collection, handwoven fabric.", category_id:scarf.id, price:50, image:"https://i.imgur.com/S6fcGox.png")
black_jumpsuit= Product.create!(product_name: "Black Jumpsuit", description: "Deep v neck Ethiopian print black jumpsuit. Full length pant, Elastic waist,Solid color, Front crossed,Short sleeves,Long pants jumpsuit with pocket, Belted wrap romper", category_id:jumpsuit.id, price:110, image:"https://i.imgur.com/7TqljD6.png")
yellow_shirt= Product.create!(product_name: "Yellow Shirt", description: "Casual breathable and lightweight, this short sleeve yellow Ethiopian print shirt for women are a great option for long summer days, and for daily wear", category_id:shirt.id, price:90, image:"https://i.imgur.com/C4AgUPU.png")
pink_striped_dress= Product.create!(product_name: "Pink Striped Dress", description: "Pleated loose swing dress with tunic length, pink striped,simple and plain, tiered dress, can be easily dress up and dress down.", category_id:dress.id, price:150, image:"https://i.imgur.com/8zVShPW.png")
black_and_white_kimono= Product.create!(product_name: "Black and White Kimono", description: "Black and white, light weight kimono. Handwoven, sustainable design, cotton, Ethiopian tibeb print kimono.", category_id:kimonos.id, price:110 , image:"https://i.imgur.com/JXHdH5M.png")
pink_kimono= Product.create!(product_name: "Pink Kimono", description: "Step into summer mode with apparel that flaunts effortless casual. Slip on this Ethiopian Print kimono over your shoulders when heading from the pool to the patio bar.", category_id:kimonos.id, price:110, image:"https://i.imgur.com/ffn4xmn.png")
grey_maxi_dress= Product.create!(product_name: "Grey Maxi Dress", description: "Grey Loose Maxi Strapless Dress.Tube top,off shoulder, strapless, Ethiopian printed bohemian dress, lightweight also, super cute casual dress for summer time", category_id:dress.id, price:160, image:"https://i.imgur.com/0npqlLw.png")
black_wrap_dress= Product.create!(product_name: "Black Wrap Dress", description: "Deep V Neck, 3/4 Sleeve, Draped Waist, Tie Belt(Not Detachable), Black Solid Colors, Knee-length Wrap Dress.", category_id:dress.id, price:150, image:"https://i.imgur.com/jaUOFag.png")
pastel_blue_pink_wrap_dress= Product.create!(product_name: "Pastel Blue Pink Wrap Dress", description: "Pastel blue and pink wrap dress. Ethiopian hand woven cotton fabric. Sustainable fashion collection.", category_id:dress.id, price:150, image:"https://i.imgur.com/FHGkfFB.png")
pink_and_black_kimono= Product.create!(product_name: "Pink and Black Kimono", description: "Pink and Black Ethiopian Print Kimono.This beautiful, mid-weight kimono makes your life easy — it’s easy to clean and easy to wear. With the soft, gentle material and luxurious drape, whether you’re lounging or layering, this kimono cover up will make you feel like a queen.", category_id:kimonos.id, price:110 , image:"https://i.imgur.com/MQ7OtUf.png")
black_and_white_jacket= Product.create!(product_name: "Black and White Jacket", description: "Wind- and water-resistant cozy bomber jacket with lined interior that provides comfort during light to moderate activity in temperature ranges of 3 to 26 degrees. Recycled fill, zip-up front, side pockets, cinched hem and embroidered icon detail.", category_id:jacket.id, price:170, image:"https://i.imgur.com/PnnZRdu.png")
yellow_wide_pants= Product.create!(product_name: "Yellow Palazzo Wide Pants", description: "Easy elegance. Yellow wide palazzo style pants. This wide-leg pant is designed for a maximum impact, day or evening.", category_id:pants.id, price:100 , image:"https://i.imgur.com/wSZwYYV.png")
black_and_white_dress= Product.create!(product_name: "Black and White Dress", description: "Black stained wrap dress. Ethiopian hand woven cotton fabric. Sustainable fashion collection.", category_id:dress.id, price:120 , image:"https://i.imgur.com/pTwniDs.png")
pink_crop_top= Product.create!(product_name: "Pink Crop Top", description: "Super cute short sleeve crop top in pink with deep v-neck & loose neck strap. Loose fitting, pink Ethiopian cotton crop top.", category_id:shirt.id, price:90, image:"https://i.imgur.com/iarD80B.png")
pastel_blue_wrap_crop_top= Product.create!(product_name: "Pastel Blue Wrap Crop Top", description: "Super cute short sleeve crop top in blue with loose neck strap. Loose fitting, pink Ethiopian cotton crop top.", category_id:shirt.id, price:90, image:"https://i.imgur.com/mYTZdoK.png")
pink_printed_kimono= Product.create!(product_name: "Pink Printed Kimono", description: "Pink and Black striped Ethiopian Traditional Style Kimono.Slip on this Ethiopian Print kimono over your shoulders when heading from the pool to the patio bar.", category_id:kimonos.id, price:110, image:"https://i.imgur.com/RfO9Q8Y.png")
white_kimono= Product.create!(product_name: "White Kimono", description: "White Traditional Print Kimono, apparel that flaunts effortless casual. Slip on this Ethiopian Print kimono over your shoulders when heading from the pool to the patio bar.", category_id:kimonos.id, price:110, image:"https://i.imgur.com/d7EceSz.png")
black_buttoned_dress= Product.create!(product_name: "Black Buttoned Dress", description: "Maxi Style Black Cotton Dress.A cotton print adds textural styling on this short sleeve buttoned maxi dress, finished off with a low hem for a fun and fresh new go-to.", category_id:dress.id, price:150, image:"https://i.imgur.com/jfVAN8e.png")
black_wide_pants= Product.create!(product_name: "Black Wide Pants", description: "Palazzo Style Cotton Black White Pants.This wide-leg pant is designed for a maximum impact, day or evening.", category_id:pants.id, price:90, image:"https://i.imgur.com/NyK7tvB.png")
pink_stripped_kimono= Product.create!(product_name: "Pink Stripped Kimono", description: "Black and Pink Stripped Kimono, apparel that flaunts effortless casual. Slip on this Ethiopian Print kimono over your shoulders when heading from the pool to the patio bar.", category_id:kimonos.id, price:110, image:"https://i.imgur.com/xAVRY45.png")
pink_dress= Product.create!(product_name: "Pink Dress", description: "Pink Ethiopian Print Dress.Pleated loose swing dress with tunic length, pink striped,simple and plain, tiered dress, can be easily dress up and dress down.", category_id:dress.id, price:120, image:"https://i.imgur.com/oKRoJh4.png")
black_and_white_bomber= Product.create!(product_name: "Black and White Bomber Jacket", description: "Black and White Bomber Style Jacket.Wind- and water-resistant cozy bomber jacket with lined interior that provides comfort during light to moderate activity in temperature ranges of 3 to 26 degrees. Recycled fill, zip-up front, and front pockets.", category_id:jacket.id, price:170, image:"https://i.imgur.com/yAgoi0d.png")
green_mask= Product.create!(product_name: "Green Mask", description: "Green Ethiopian printed mask. A combination of functionality and style. Part of our vintage styled mask collection.", category_id:mask.id, price: 50, image:"https://i.imgur.com/FxukGvk.png")



# Seed for Order

order1= Order.create(cart_id:past_cart1.id, product_id:pink_kimono.id, quantity:1)
order2= Order.create(cart_id:past_cart1.id, product_id:pink_dress.id,quantity:1)
order3= Order.create(cart_id:past_cart2.id, product_id:black_and_white_bomber.id, quantity:1)
# order4= Order.create(cart_id:cart1.id, product_id: white_kimono.id, quantity:1)

puts "I have seeded!"