User.destroy_all
Shop.destroy_all
Card.destroy_all
Promotion.destroy_all

puts "Cleaning the database"
puts  "Cleaned DB"


puts "Creating Users"

# OWNERS
lucia = User.create!(first_name: "Lucia", last_name: "Ferrara", photo: "https://randomuser.me/api/portraits/women/43.jpg", email: "lucia@lewagon.com", password: "123456", qr: "")
alessandro = User.create!(first_name: "Alessandro", last_name: "Villa", photo: "https://randomuser.me/api/portraits/men/22.jpg", email: "alessandro@lewagon.com", password: "123456", qr: "")
giuseppe = User.create!(first_name: "Giuseppe", last_name: "Colombo", photo: "https://randomuser.me/api/portraits/men/47.jpg", email: "giuseppe@lewagon.com", password: "123456", qr: "")
sofia = User.create!(first_name: "Sofia", last_name: "Bianchi", photo: "https://randomuser.me/api/portraits/women/10.jpg", email: "sofia@lewagon.com", password: "123456", qr: "")
agnese = User.create!(first_name: "Agnese", last_name: "Costa", photo: "https://randomuser.me/api/portraits/women/62.jpg", email: "agnese@lewagon.com", password: "123456", qr: "")
salvatore = User.create!(first_name: "Salvatore", last_name: "Esposito", photo: "https://randomuser.me/api/portraits/men/4.jpg", email: "salvatore@lewagon.com", password: "123456", qr: "")
federica = User.create!(first_name: "Federica", last_name: "Rossi", photo: "https://randomuser.me/api/portraits/women/79.jpg", email: "federica@lewagon.com", password: "123456", qr: "")



andrea = User.create!(first_name: "Andrea", last_name: "Orlando", photo: "https://randomuser.me/api/portraits/men/86.jpg", email: "andrea@lewagon.com", password: "123456", qr: "")
asia = User.create!(first_name: "Asia", last_name: "Pagano", photo: "https://randomuser.me/api/portraits/women/65.jpg", email: "asia@lewagon.com", password: "123456", qr: "")
gastone = User.create!(first_name: "Gastone", last_name: "Donati", photo: "https://randomuser.me/api/portraits/men/29.jpg", email: "gastone@lewagon.com", password: "123456", qr: "")
romeo = User.create!(first_name: "Romeo", last_name: "Basile", photo: "https://randomuser.me/api/portraits/men/31.jpg", email: "romeo@lewagon.com", password: "123456", qr: "")
rebecca = User.create!(first_name: "Rebecca", last_name: "Bernardi  ", photo: "https://randomuser.me/api/portraits/women/32.jpg", email: "rebecca@lewagon.com", password: "123456", qr: "")
franca = User.create!(first_name: "Franca", last_name: "Carbone", photo: "https://randomuser.me/api/portraits/women/17.jpg", email: "franca@lewagon.com", password: "123456", qr: "")



puts "Creating Shops"


shop1 = Shop.create!(name:"Gelateria Duomo", description:"Best gelato in Milan", user: lucia, photo: "https://unsplash.com/photos/Xpt4_HgZSjw", category: "gelateria", address: "Via Giovanni Boccaccio, 9, Milan")
shop2 = Shop.create!(name:"Gelateria da Mario", description:"Artisanal gelato ", user: alessandro, photo: "https://unsplash.com/photos/alEZLDPPRBU", category: "gelateria", address:"Via Mercato, 20, Milan")
shop3 = Shop.create!(name:"Pizzeria da Luca", description:"Authentic Pizza from Naple", user: sofia, photo: "https://unsplash.com/photos/22Vt7JIf7ZI", category: "pizzeria", address:"Via Edmondo de Amicis, 22, Milan")
shop4 = Shop.create!(name:"Gelateria Ambrogio", description:"Gelato made with love", user: agnese, photo: "https://unsplash.com/photos/8beTH4VkhLI", category: "gelateria", address:"Via Spadari, 13, Milan")
shop5 = Shop.create!(name:"Osteria Sora Loci", description:"Best local cuisine", user: salvatore, photo: "https://unsplash.com/photos/AvLo-ZG6fVY", category: "osteria", address:"Via Tortona, 3, Milan")
shop6 = Shop.create!(name:"Pizzeria Baggio", description:"Great Price-Quality", user: federica, photo: "https://unsplash.com/photos/IODFFLZyDlI", category: "pizzeria", address:"Via Giovanni Gherardini, Milan")


puts "Creating Cards"

Card.create!(star_count: 0, status: "pending", shop_id: shop1.id, user_id: andrea.id)
Card.create!(star_count: 2, status: "pending", shop_id: shop2.id, user_id: asia.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop3.id, user_id: gastone.id)
Card.create!(star_count: 5, status: "pending", shop_id: shop4.id, user_id: romeo.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop5.id, user_id: rebecca.id)

puts "Creating Promotion"

Promotion.create!(name: "pizza discount", description: "buy 1 pizza, get 2 stamps", shop_id: 6)
Promotion.create!(name: "2 for 1 gelato", description: "buy 2 gelatos for the price of 1", shop_id: 1)
Promotion.create!(name: "2 stamps for 1 gelato", description: "2 stamps per gelato", shop_id: 2)
