
require 'faker'
require 'date'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all

puts "Cleaning the database"

User.destroy_all
puts  "Cleaned DB"

puts "Creating User seeds"

USERS = [
User.create!(first_name: "Alessio", last_name: "Del Piero", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/babbage93", email: "alessio@lewagon.com", password: "123456"),
User.create!(first_name: "Luigi", last_name: "Buffon", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/dub-G", email: "luigi@lewagon.com", password: "123456"),
User.create!(first_name: "Pietro", last_name: "Czech", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/twentymls", email: "pietro@lewagon.com", password: "123456"),
User.create!(first_name: "Krystal", last_name: "Montolivo", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/kmontes417", email: "krystal@lewagon.com", password: "123456"),
User.create!(first_name: "Richard", last_name: "Totti", remote_photo_url: "https://kitt.lewagon.com/placeholder/users/richardhaenel", email: "richard@lewagon.com", password: "123456"),
]

