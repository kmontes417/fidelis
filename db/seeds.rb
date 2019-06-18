User.destroy_all
Shop.destroy_all
Card.destroy_all
Promotion.destroy_all

puts "Cleaning the database"
puts  "Cleaned DB"

puts "Creating Shops"

Shop.create!(Name:"Gelateria Duomo", Description:"Best gelato in Milan", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/Xpt4_HgZSjw")
Shop.create!(Name:"Gelateria da Mario", Description:"Artisanal gelato ", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/alEZLDPPRBU")
Shop.create!(Name:"Pizzeria da Luca", Description:"Authentic Pizza from Naple", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/22Vt7JIf7ZI")
Shop.create!(Name:"Milan Barber", Description:"Quality Barber", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/IvQeAVeJULw")
Shop.create!(Name:"Gelateria Ambrogio", Description:"Gelato made with love", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/8beTH4VkhLI")
Shop.create!(Name:"Osteria Sora Loci", Description:"Best local cuisine", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/AvLo-ZG6fVY")
Shop.create!(Name:"Pizzeria Baggio", Description:"Great Price-Quality", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/IODFFLZyDlI")

puts "Creating User seeds"

USERS = [
User.create!(first_name: "Alessio", last_name: "Del Piero", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/babbage93", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Luigi", last_name: "Buffon", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/dub-G", email: "luigi@lewagon.com", password: "123456"),
User.create!(first_name: "Pietro", last_name: "Czech", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/twentymls", email: "pietro@lewagon.com", password: "123456"),
User.create!(first_name: "Krystal", last_name: "Montolivo", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/kmontes417", email: "krystal@lewagon.com", password: "123456"),
User.create!(first_name: "Richard", last_name: "Totti", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/richardhaenel", email: "richard@lewagon.com", password: "123456"),
]

puts "Creating Cards"

Card.create!(star_count: 5, status: "pending", shop_id: 2, user_id: 1)
Card.create!(star_count: 2, status: "pending", shop_id: 3, user_id: 2)
Card.create!(star_count: 10, status: "completed", shop_id: 3, user_id: 3)
Card.create!(star_count: 5, status: "pending", shop_id: 2, user_id: 4)
Card.create!(star_count: 10, status: "completed", shop_id: 5, user_id: 5)

puts "Creating Promotion"

Promotion.create!(name: "pizza discount", description: "buy 1 pizza, get 2 stamps", shop_id: 7)
Promotion.create!(name: "2 for 1 gelato", description: "buy 2 gelatos for the price of 1", shop_id: 1)
Promotion.create!(name: "2 stamps for 1 gelato", description: "2 stamps per gelato", shop_id: 2)
