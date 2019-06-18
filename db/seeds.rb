User.destroy_all
puts "Cleaning the database"
puts  "Cleaned DB"

OWNERS = [
User.create!(first_name: "Lucia", last_name: "Ferrara", remote_photo_url: "https://randomuser.me/api/portraits/women/43.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Alessandro", last_name: "Villa", remote_photo_url: "https://randomuser.me/api/portraits/men/22.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Giuseppe", last_name: "Colombo", remote_photo_url: "https://randomuser.me/api/portraits/men/47.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Sofia", last_name: "Bianchi", remote_photo_url: "https://randomuser.me/api/portraits/women/10.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Agnese", last_name: "Costa", remote_photo_url: "https://randomuser.me/api/portraits/women/62.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Salvatore", last_name: "Esposito", remote_photo_url: "https://randomuser.me/api/portraits/men/4.jpg", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Federica", last_name: "Rossi", remote_photo_url: "https://randomuser.me/api/portraits/women/79.jpg", email: "alessio@lewagon.com", password: "123456"),
]



Shop.create!(Name:"Gelateria Duomo", Description:"Best gelato in Milan", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/Xpt4_HgZSjw")
Shop.create!(Name:"Gelateria da Mario", Description:"Artisanal gelato ", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/alEZLDPPRBU")
Shop.create!(Name:"Pizzeria da Luca", Description:"Authentic Pizza from Naple", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/22Vt7JIf7ZI")
Shop.create!(Name:"Milan Barber", Description:"Quality Barber", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/IvQeAVeJULw")
Shop.create!(Name:"Gelateria Ambrogio", Description:"Gelato made with love", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/8beTH4VkhLI")
Shop.create!(Name:"Osteria Sora Loci", Description:"Best local cuisine", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/AvLo-ZG6fVY")
Shop.create!(Name:"Pizzeria Baggio", Description:"Great Price-Quality", Max_stars:10, user: OWNERS.sample, Photo: "https://unsplash.com/photos/IODFFLZyDlI")

puts "Creating User seeds"

USERS = [
User.create!(first_name: "Alessio", last_name: "Del Piero", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/babbage93", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Luigi", last_name: "Buffon", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/dub-G", email: "luigi@lewagon.com", password: "123456"),
User.create!(first_name: "Pietro", last_name: "Marini", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/twentymls", email: "pietro@lewagon.com", password: "123456"),
User.create!(first_name: "Krystal", last_name: "Montolivo", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/kmontes417", email: "krystal@lewagon.com", password: "123456"),
User.create!(first_name: "Richard", last_name: "Totti", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/richardhaenel", email: "richard@lewagon.com", password: "123456"),
]




