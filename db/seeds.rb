Card.destroy_all
Promotion.destroy_all
Shop.destroy_all
Category.destroy_all
User.destroy_all

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
maria = User.create!(first_name: "Maria", last_name: "Bianchi", photo: "https://randomuser.me/api/portraits/women/10.jpg", email: "maria@lewagon.com", password: "123456", qr: "")
mario = User.create!(first_name: "Mario", last_name: "Costa", photo: "https://randomuser.me/api/portraits/women/62.jpg", email: "mario@lewagon.com", password: "123456", qr: "")
gianni = User.create!(first_name: "Gianni", last_name: "Esposito", photo: "https://randomuser.me/api/portraits/men/4.jpg", email: "gianni@lewagon.com", password: "123456", qr: "")
peppe = User.create!(first_name: "Peppe", last_name: "Rossi", photo: "https://randomuser.me/api/portraits/women/79.jpg", email: "peppe@lewagon.com", password: "123456", qr: "")



andrea = User.create!(first_name: "Andrea", last_name: "Orlando", photo: "https://randomuser.me/api/portraits/men/86.jpg", email: "andrea@lewagon.com", password: "123456", qr: "")
asia = User.create!(first_name: "Asia", last_name: "Pagano", photo: "https://randomuser.me/api/portraits/women/65.jpg", email: "asia@lewagon.com", password: "123456", qr: "")
gastone = User.create!(first_name: "Gastone", last_name: "Donati", photo: "https://randomuser.me/api/portraits/men/29.jpg", email: "gastone@lewagon.com", password: "123456", qr: "")
romeo = User.create!(first_name: "Romeo", last_name: "Basile", photo: "https://randomuser.me/api/portraits/men/31.jpg", email: "romeo@lewagon.com", password: "123456", qr: "")
rebecca = User.create!(first_name: "Rebecca", last_name: "Bernardi  ", photo: "https://randomuser.me/api/portraits/women/32.jpg", email: "rebecca@lewagon.com", password: "123456", qr: "")
franca = User.create!(first_name: "Franca", last_name: "Carbone", photo: "https://randomuser.me/api/portraits/women/17.jpg", email: "franca@lewagon.com", password: "123456", qr: "")

puts "Creating Categories"

pizzeria = Category.create!(name: "Pizzeria")
gelateria = Category.create!(name: "Gelateria")
osteria = Category.create!(name: "Osteria")
barbiere = Category.create!(name: "Barbiere")
marijuana = Category.create!(name: "Marijuana")


puts "Creating Shops"


shop1 = Shop.create!(name:"Gelateria Duomo", description:"Best gelato in Milan", user: lucia, photo: "https://images.unsplash.com/photo-1473213110592-19430a217c0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", category: gelateria, address: "Via Giovanni Boccaccio, 9, Milan")
shop2 = Shop.create!(name:"Gelateria da Mario", description:"Artisanal gelato ", user: alessandro, photo: "https://images.unsplash.com/photo-1529688499411-262f191fe29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80", category: gelateria, address:"Via Mercato, 20, Milan")
shop3 = Shop.create!(name:"Pizzeria da Luca", description:"Authentic Pizza from Naple", user: sofia, photo: "https://images.unsplash.com/photo-1542834369-f10ebf06d3e0?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80", category: pizzeria, address:"Via Edmondo de Amicis, 22, Milan")
shop4 = Shop.create!(name:"Gelateria Ambrogio", description:"Gelato made with love", user: agnese, photo: "https://images.unsplash.com/photo-1501443762994-82bd5dace89a?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80", category: gelateria, address:"Via Spadari, 13, Milan")
shop5 = Shop.create!(name:"Osteria Sora Loci", description:"Best local cuisine", user: salvatore, photo: "https://images.unsplash.com/photo-1559227492-13bbe046224e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", category: osteria, address:"Via Tortona, 3, Milan")
shop6 = Shop.create!(name:"Pizzeria Baggio", description:"Great Price-Quality", user: federica, photo: "https://images.unsplash.com/photo-1557686413-2f7e2277bfa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80", category: pizzeria, address:"Via Giovanni Gherardini, Milan")
shop7 = Shop.create!(name:"barberbarb", description:"La barba del nonno", user: maria, photo: "https://images.unsplash.com/photo-1541533848490-bc8115cd6522?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: barbiere, address:"Via Vincenzo Monti, 15, Milan")
shop8 = Shop.create!(name:"Gigi Barbershop", description:"Best aircut in town", user: mario, photo: "https://images.unsplash.com/photo-1521322714240-ee1d383eab62?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80", category: barbiere, address:"Corso Magenta, 10, Milan")
shop9 = Shop.create!(name:"Mara Maria", description:"Best local CBD maria", user: gianni, photo: "https://images.unsplash.com/photo-1536819114556-1e10f967fb61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: marijuana, address:"Viale Premuda, 16, Milan")
shop10 = Shop.create!(name:"Ad Amsterdam", description:"Marijuana from holland", user: peppe, photo: "https://images.unsplash.com/photo-1457573358540-3f57f7995c6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: marijuana, address:"Via Pietro Mascagni, 20, Milan")


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
