User.destroy_all
Shop.destroy_all
Card.destroy_all
Promotion.destroy_all

puts "Cleaning the database"
puts  "Cleaned DB"


puts "Creating Users"

# OWNERS
User.create!(first_name: "Lucia", last_name: "Ferrara", photo: "https://randomuser.me/api/portraits/women/43.jpg", email: "lucia@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Alessandro", last_name: "Villa", photo: "https://randomuser.me/api/portraits/men/22.jpg", email: "alessandro@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Giuseppe", last_name: "Colombo", photo: "https://randomuser.me/api/portraits/men/47.jpg", email: "giuseppe@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Sofia", last_name: "Bianchi", photo: "https://randomuser.me/api/portraits/women/10.jpg", email: "sofia@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Agnese", last_name: "Costa", photo: "https://randomuser.me/api/portraits/women/62.jpg", email: "agnese@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Salvatore", last_name: "Esposito", photo: "https://randomuser.me/api/portraits/men/4.jpg", email: "salvatore@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Federica", last_name: "Rossi", photo: "https://randomuser.me/api/portraits/women/79.jpg", email: "federica@lewagon.com", password: "123456", qr: "")



User.create!(first_name: "Andrea", last_name: "Orlando", photo: "https://randomuser.me/api/portraits/men/86.jpg", email: "orlando@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Asia", last_name: "Pagano", photo: "https://randomuser.me/api/portraits/women/65.jpg", email: "pagano@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Gastone", last_name: "Donati", photo: "https://randomuser.me/api/portraits/men/29.jpg", email: "donati@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Romeo", last_name: "Basile", photo: "https://randomuser.me/api/portraits/men/31.jpg", email: "basile@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Rebecca", last_name: "Bernardi  ", photo: "https://randomuser.me/api/portraits/women/32.jpg", email: "bernardi@lewagon.com", password: "123456", qr: "")
User.create!(first_name: "Franca", last_name: "Carbone", photo: "https://randomuser.me/api/portraits/women/17.jpg", email: "franca@lewagon.com", password: "123456", qr: "")



puts "Creating Shops"


Shop.create!(name:"Gelateria Duomo", description:"Best gelato in Milan", user: OWNERS.sample, photo: "https://unsplash.com/photos/Xpt4_HgZSjw", category: "gelateria", address: "Via Giovanni Boccaccio, 9, Milan")
Shop.create!(name:"Gelateria da Mario", description:"Artisanal gelato ", user: OWNERS.sample, photo: "https://unsplash.com/photos/alEZLDPPRBU", category: "gelateria", address:"Via Mercato, 20, Milan")
Shop.create!(name:"Pizzeria da Luca", description:"Authentic Pizza from Naple", user: OWNERS.sample, photo: "https://unsplash.com/photos/22Vt7JIf7ZI", category: "pizzeria", address:"Via Edmondo de Amicis, 22, Milan")
Shop.create!(name:"Gelateria Ambrogio", description:"Gelato made with love", user: OWNERS.sample, photo: "https://unsplash.com/photos/8beTH4VkhLI", category: "gelateria", address:"Via Spadari, 13, Milan")
Shop.create!(name:"Osteria Sora Loci", description:"Best local cuisine", user: OWNERS.sample, photo: "https://unsplash.com/photos/AvLo-ZG6fVY", category: "osteria", address:"Via Tortona, 3, Milan")
Shop.create!(name:"Pizzeria Baggio", description:"Great Price-Quality", user: OWNERS.sample, photo: "https://unsplash.com/photos/IODFFLZyDlI", category: "pizzeria", address:"Via Giovanni Gherardini, Milan")


puts "Creating Cards"

Card.create!(star_count: 5, status: "pending", shop_id: 2, user_id: 1)
Card.create!(star_count: 2, status: "pending", shop_id: 3, user_id: 2)
Card.create!(star_count: 10, status: "completed", shop_id: 3, user_id: 3)
Card.create!(star_count: 5, status: "pending", shop_id: 2, user_id: 4)
Card.create!(star_count: 10, status: "completed", shop_id: 5, user_id: 5)

puts "Creating Promotion"

Promotion.create!(name: "pizza discount", description: "buy 1 pizza, get 2 stamps", shop_id: 6)
Promotion.create!(name: "2 for 1 gelato", description: "buy 2 gelatos for the price of 1", shop_id: 1)
Promotion.create!(name: "2 stamps for 1 gelato", description: "2 stamps per gelato", shop_id: 2)
