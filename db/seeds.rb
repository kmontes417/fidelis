# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shop.create!(Name:"Gelateria Duomo", Description:"Best gelato in Milan", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/Xpt4_HgZSjw")
Shop.create!(Name:"Gelateria da Mario", Description:"Artisanal gelato ", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/alEZLDPPRBU")
Shop.create!(Name:"Pizzeria da Luca", Description:"Authentic Pizza from Naple", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/22Vt7JIf7ZI")
Shop.create!(Name:"Milan Barber", Description:"Quality Barber", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/IvQeAVeJULw")
Shop.create!(Name:"Gelateria Ambrogio", Description:"Gelato made with love", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/8beTH4VkhLI")
Shop.create!(Name:"Osteria Sora Loci", Description:"Best local cuisine", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/AvLo-ZG6fVY")
Shop.create!(Name:"Pizzeria Baggio", Description:"Great Price-Quality", Max_stars:10, user: OWNER.sample, Photo: "https://unsplash.com/photos/IODFFLZyDlI")
