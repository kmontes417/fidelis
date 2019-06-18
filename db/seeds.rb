
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
User.create!(first_name: "Alessio", last_name: "Del Piero", remote_photo_url: "https://media.licdn.com/dms/image/C4E0BAQEi1tZolS3h9g/company-logo_200_200/0?e=2159024400&v=beta&t=IoV7oTesJjHHglA8fEsjFBSjeGCTIqhVpgQkAB_mJao", email: "richard@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Luigi", last_name: "Buffon", remote_photo_url: "https://media.licdn.com/dms/image/C4E0BAQEi1tZolS3h9g/company-logo_200_200/0?e=2159024400&v=beta&t=IoV7oTesJjHHglA8fEsjFBSjeGCTIqhVpgQkAB_mJao", email: "richard@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Pietro", last_name: "Czech", remote_photo_url: "https://media.licdn.com/dms/image/C4E0BAQEi1tZolS3h9g/company-logo_200_200/0?e=2159024400&v=beta&t=IoV7oTesJjHHglA8fEsjFBSjeGCTIqhVpgQkAB_mJao", email: "richard@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Krystal", last_name: "Montolivo", remote_photo_url: "https://media.licdn.com/dms/image/C4E0BAQEi1tZolS3h9g/company-logo_200_200/0?e=2159024400&v=beta&t=IoV7oTesJjHHglA8fEsjFBSjeGCTIqhVpgQkAB_mJao", email: "richard@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Richard", last_name: "Totti", remote_photo_url: "https://media.licdn.com/dms/image/C4E0BAQEi1tZolS3h9g/company-logo_200_200/0?e=2159024400&v=beta&t=IoV7oTesJjHHglA8fEsjFBSjeGCTIqhVpgQkAB_mJao", email: "richard@lewagon.com", password: "123456", host: true),
]

