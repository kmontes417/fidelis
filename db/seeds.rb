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
sofia = User.create!(first_name: "Sofia", last_name: "Bianchi", photo: "https://randomuser.me/api/portraits/women/09.jpg", email: "sofia@lewagon.com", password: "123456", qr: "")
pietro = User.create!(first_name: "Pietro", last_name: "Ventimiglia", photo: "https://kitt.lewagon.com/placeholder/users/twentymls", email: "pietro@lewagon.com", password: "123456", qr: "")
salvatore = User.create!(first_name: "Salvatore", last_name: "Esposito", photo: "https://randomuser.me/api/portraits/men/3.jpg", email: "salvatore@lewagon.com", password: "123456", qr: "")
federica = User.create!(first_name: "Federica", last_name: "Rossi", photo: "https://randomuser.me/api/portraits/women/79.jpg", email: "federica@lewagon.com", password: "123456", qr: "")
maria = User.create!(first_name: "Maria", last_name: "Bianchi", photo: "https://randomuser.me/api/portraits/women/10.jpg", email: "maria@lewagon.com", password: "123456", qr: "")
mario = User.create!(first_name: "Mario", last_name: "Costa", photo: "https://randomuser.me/api/portraits/women/62.jpg", email: "mario@lewagon.com", password: "123456", qr: "")
gianni = User.create!(first_name: "Gianni", last_name: "Esposito", photo: "https://randomuser.me/api/portraits/men/4.jpg", email: "gianni@lewagon.com", password: "123456", qr: "")
peppe = User.create!(first_name: "Peppe", last_name: "Rossi", photo: "https://randomuser.me/api/portraits/men/83.jpg", email: "peppe@lewagon.com", password: "123456", qr: "")

agostino = User.create!(first_name: "Agostino", last_name: "Ferrari", photo: "https://randomuser.me/api/portraits/men/99.jpg", email: "agostino@lewagon.com", password: "123456", qr: "")
ambrogio = User.create!(first_name: "Ambrogio", last_name: "Bellucci", photo: "https://randomuser.me/api/portraits/men/85.jpg", email: "ambrogio@lewagon.com", password: "123456", qr: "")
giana = User.create!(first_name: "Giana", last_name: "Caruso", photo: "https://randomuser.me/api/portraits/women/11.jpg", email: "giana@lewagon.com", password: "123456", qr: "")
martina = User.create!(first_name: "Martina", last_name: "Armani", photo: "https://randomuser.me/api/portraits/women/12.jpg", email: "martina@lewagon.com", password: "123456", qr: "")
leonardo = User.create!(first_name: "Leonardo", last_name: "Ferrante", photo: "https://randomuser.me/api/portraits/men/11.jpg", email: "leonardo@lewagon.com", password: "123456", qr: "")
beatrice = User.create!(first_name: "Beatrice", last_name: "Gallo", photo: "https://randomuser.me/api/portraits/women/14.jpg", email: "beatrice@lewagon.com", password: "123456", qr: "")
claudia = User.create!(first_name: "Claudia", last_name: "Mancini", photo: "https://randomuser.me/api/portraits/women/15.jpg", email: "claudia@lewagon.com", password: "123456", qr: "")
clara = User.create!(first_name: "Clara", last_name: "Mariano", photo: "https://randomuser.me/api/portraits/women/16.jpg", email: "clara@lewagon.com", password: "123456", qr: "")
paolo = User.create!(first_name: "Paolo", last_name: "Sartori", photo: "https://randomuser.me/api/portraits/men/11.jpg", email: "paolo@lewagon.com", password: "123456", qr: "")

#USERS with cards
andrea = User.create!(first_name: "Andrea", last_name: "Orlando", photo: "https://randomuser.me/api/portraits/men/86.jpg", email: "andrea@lewagon.com", password: "123456", qr: "")
asia = User.create!(first_name: "Asia", last_name: "Pagano", photo: "https://randomuser.me/api/portraits/women/65.jpg", email: "asia@lewagon.com", password: "123456", qr: "")
gastone = User.create!(first_name: "Gastone", last_name: "Donati", photo: "https://randomuser.me/api/portraits/men/29.jpg", email: "gastone@lewagon.com", password: "123456", qr: "")
romeo = User.create!(first_name: "Romeo", last_name: "Basile", photo: "https://randomuser.me/api/portraits/men/31.jpg", email: "romeo@lewagon.com", password: "123456", qr: "")
rebecca = User.create!(first_name: "Rebecca", last_name: "Bernardi  ", photo: "https://randomuser.me/api/portraits/women/32.jpg", email: "rebecca@lewagon.com", password: "123456", qr: "")
franca = User.create!(first_name: "Franca", last_name: "Carbone", photo: "https://randomuser.me/api/portraits/women/17.jpg", email: "franca@lewagon.com", password: "123456", qr: "")
illaria = User.create!(first_name: "Illaria", last_name: "Pellegrini", photo: "https://randomuser.me/api/portraits/women/18.jpg", email: "illaria@lewagon.com", password: "123456", qr: "")
loreta = User.create!(first_name: "Loreta", last_name: "Romano", photo: "https://randomuser.me/api/portraits/women/26.jpg", email: "loreta@lewagon.com", password: "123456", qr: "")
alessio = User.create!(first_name: "Alessio", last_name: "Bezzi", photo: "https://kitt.lewagon.com/placeholder/users/babbage93", email: "alessio@lewagon.com", password: "123456", qr: "")

puts "Creating Categories"

pizzeria = Category.create!(name: "Pizzeria")
gelateria = Category.create!(name: "Gelateria")
osteria = Category.create!(name: "Osteria")
barbiere = Category.create!(name: "Barbiere")
marijuana = Category.create!(name: "Marijuana")


puts "Creating Shops"


shop1 = Shop.create!(name:"Gelateria Duomo", description:"Best gelato in Milan. A place for those that want a fantastic Gelato in an elegant and friendly environment, during their lunch break or while taking a walk along the shopping streets of Milan. A welcoming place, to maintain a high profile, even when you are relaxing", user: lucia, photo: "https://images.unsplash.com/photo-1473213110592-19430a217c0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", category: gelateria, address: "Via Giovanni Boccaccio, 9, Milan")
shop2 = Shop.create!(name:"Gelateria da Pietro", description:"Artisanal gelato. A place for those that want a fantastic Gelato in an elegant and friendly environment, during their lunch break or while taking a walk along the shopping streets of Milan. A welcoming place, to maintain a high profile, even when you are relaxing ", user: pietro, photo: "https://images.unsplash.com/photo-1529688499411-262f191fe29e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80", category: gelateria, address:"Via Mercato, 20, Milan")
shop3 = Shop.create!(name:"Pizzeria da Luca", description:"Authentic Pizza from Naples. If you are looking for a place where you can enjoy an excellent pizza prepared with care and attention to detail, our pizza restaurant will not disappoint you. We offer soft and light pizzas for all tastes ", user: sofia, photo: "https://images.unsplash.com/photo-1542834369-f10ebf06d3e0?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80", category: pizzeria, address:"Via Giuseppe Pecchio, 11, Milan")
shop4 = Shop.create!(name:"Gelateria Ambrogio", description:"Gelato made with love. A place for those that want a fantastic Gelato in an elegant and friendly environment, during their lunch break or while taking a walk along the shopping streets of Milan. A welcoming place, to maintain a high profile, even when you are relaxing", user: leonardo, photo: "https://images.unsplash.com/photo-1501443762994-82bd5dace89a?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80", category: gelateria, address:"Via Spadari, 13, Milan")
shop5 = Shop.create!(name:"Osteria Sora Loci", description:"Best local cuisine. A journey into the Flavors and Perfumes of our Italy, passing through the regions richest in wine and food traditions. Simple dishes and highly selected raw materials offered in two separate à la carte menus for lunch and dinner", user: salvatore, photo: "https://images.unsplash.com/photo-1559227492-13bbe046224e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", category: osteria, address:"Via Tortona, 3, Milan")
shop6 = Shop.create!(name:"Pizzeria Baggio", description:"Great Price-Quality. If you are looking for a place where you can enjoy an excellent pizza prepared with care and attention to detail, our pizza restaurant will not disappoint you. We offer soft and light pizzas for all tastes", user: federica, photo: "https://images.unsplash.com/photo-1557686413-2f7e2277bfa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80", category: pizzeria, address:"Via Giovanni Gherardini, Milan")
shop7 = Shop.create!(name:"Barberbarb", description:"La barba del nonno. We let you rediscover the rituals and the gestures of the traditional men’s grooming experience, from hot towel wet shave to scissors or razor haircut to manicure. Every service is carefully adapted to individual skin and hair type, making it a truly “tailor-made” Italian experience of understated luxury", user: maria, photo: "https://images.unsplash.com/photo-1541533848490-bc8115cd6522?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: barbiere, address:"Via Vincenzo Monti, 15, Milan")
shop8 = Shop.create!(name:"Gigi Barbershop", description:"Best haircut in town. We let you rediscover the rituals and the gestures of the traditional men’s grooming experience, from hot towel wet shave to scissors or razor haircut to manicure. Every service is carefully adapted to individual skin and hair type, making it a truly “tailor-made” Italian experience of understated luxury", user: mario, photo: "https://images.unsplash.com/photo-1521322714240-ee1d383eab62?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80", category: barbiere, address:"Corso Magenta, 10, Milan")
shop9 = Shop.create!(name:"Mara Maria", description:"Best local CBD marijuana. A mixture of genius and madness, an explosion of sounds that reverberate in your head, its genetics breaks through our senses, hypnotizing who owns it Brain the line dedicated to concentration and study", user: gianni, photo: "https://images.unsplash.com/photo-1536819114556-1e10f967fb61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: marijuana, address:"Viale Premuda, 16, Milan")
shop10 = Shop.create!(name:"Ad Amsterdam", description:"Marijuana from holland. A mixture of genius and madness, an explosion of sounds that reverberate in your head, its genetics breaks through our senses, hypnotizing who owns it Brain the line dedicated to concentration and study", user: peppe, photo: "https://images.unsplash.com/photo-1457573358540-3f57f7995c6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", category: marijuana, address:"Via Pietro Mascagni, 20, Milan")

shop11 = Shop.create!(name:"Gelateria Roma", description:"Best Roman gelato around. A place for those that want a fantastic Gelato in an elegant and friendly environment, during their lunch break or while taking a walk along the shopping streets of Milan. A welcoming place, to maintain a high profile, even when you are relaxing", user: agostino, photo: "https://images.unsplash.com/photo-1534173751091-95c4b3108237?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", category: gelateria, address:"Via Giovanni Boccaccio, 9, Milan")
shop12 = Shop.create!(name:"Pizzeria Napoli", description:"Delicious pizza from Napoli. If you are looking for a place where you can enjoy an excellent pizza prepared with care and attention to detail, our pizza restaurant will not disappoint you. We offer soft and light pizzas for all tastes", user: ambrogio, photo: "https://images.unsplash.com/photo-1534649643822-e7431de08af6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: pizzeria, address:"Corso Lodi, 2, Milan")
shop13 = Shop.create!(name:"Osteria Milano", description:"Great local food. A journey into the Flavors and Perfumes of our Italy, passing through the regions richest in wine and food traditions. Simple dishes and highly selected raw materials offered in two separate à la carte menus for lunch and dinner", user: giana, photo: "https://images.unsplash.com/photo-1521017432531-fbd92d768814?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: osteria, address:"Via Spadari, 15, Milan")
shop14 = Shop.create!(name:"Martina Barbershop", description:"Best haircut in the neighborhood. We let you rediscover the rituals and the gestures of the traditional men’s grooming experience, from hot towel wet shave to scissors or razor haircut to manicure. Every service is carefully adapted to individual skin and hair type, making it a truly “tailor-made” Italian experience of understated luxury", user: martina, photo: "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: barbiere, address:"Via Emanuele Filiberto, 10, Milan")
shop15 = Shop.create!(name:"JustMary", description:"Feel good marijuana here. A mixture of genius and madness, an explosion of sounds that reverberate in your head, its genetics breaks through our senses, hypnotizing who owns it Brain the line dedicated to concentration and study", user: leonardo, photo: "https://images.unsplash.com/photo-1525575674331-70638740994c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: marijuana, address:"Piazza Tre Torri, 2, Milan")
shop16 = Shop.create!(name:"Holland Rose", description:"Best deal for marijuana in town. A mixture of genius and madness, an explosion of sounds that reverberate in your head, its genetics breaks through our senses, hypnotizing who owns it Brain the line dedicated to concentration and study", user: beatrice, photo: "https://images.unsplash.com/photo-1551377130-380f4fa9bb63?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: marijuana, address:"Via Valtellina, 22, Milan")
shop17 = Shop.create!(name:"Osteria Mamma Giana", description:"Best local food around. A journey into the Flavors and Perfumes of our Italy, passing through the regions richest in wine and food traditions. Simple dishes and highly selected raw materials offered in two separate à la carte menus for lunch and dinner", user: claudia, photo: "https://images.unsplash.com/photo-1528605248644-14dd04022da1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: osteria, address:"Via Carlo Botta, 3, Milan")
shop18 = Shop.create!(name:"Pizzeria Paolo", description:"Get delicious pizza here. If you are looking for a place where you can enjoy an excellent pizza prepared with care and attention to detail, our pizza restaurant will not disappoint you. We offer soft and light pizzas for all tastes", user: paolo, photo: "https://images.unsplash.com/photo-1545016803-a7e357a737e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: pizzeria, address:"Via Bergognone, 42, Milan")
shop19 = Shop.create!(name:"Barbershop Ale", description:"Amazing deals on haircuts. We let you rediscover the rituals and the gestures of the traditional men’s grooming experience, from hot towel wet shave to scissors or razor haircut to manicure. Every service is carefully adapted to individual skin and hair type, making it a truly “tailor-made” Italian experience of understated luxury", user: alessandro, photo: "https://images.unsplash.com/photo-1534778356534-d3d45b6df1da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", category: barbiere, address:"Via Bergognone, 1, Milan")


puts "Creating Cards"

Card.create!(star_count: 6, status: "pending", shop_id: shop1.id, user_id: andrea.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop6.id, user_id: andrea.id)
Card.create!(star_count: 3, status: "pending", shop_id: shop19.id, user_id: andrea.id)


Card.create!(star_count: 2, status: "pending", shop_id: shop2.id, user_id: asia.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop5.id, user_id: asia.id)
Card.create!(star_count: 4, status: "pending", shop_id: shop9.id, user_id: asia.id)


Card.create!(star_count: 10, status: "completed", shop_id: shop3.id, user_id: gastone.id)
Card.create!(star_count: 2, status: "pending", shop_id: shop8.id, user_id: gastone.id)
Card.create!(star_count: 7, status: "pending", shop_id: shop17.id, user_id: gastone.id)


Card.create!(star_count: 5, status: "pending", shop_id: shop4.id, user_id: romeo.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop9.id, user_id: romeo.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop14.id, user_id: romeo.id)


Card.create!(star_count: 8, status: "pending", shop_id: shop5.id, user_id: rebecca.id)
Card.create!(star_count: 3, status: "pending", shop_id: shop18.id, user_id: rebecca.id)
Card.create!(star_count: 1, status: "pending", shop_id: shop16.id, user_id: rebecca.id)

Card.create!(star_count: 7, status: "pending", shop_id: shop12.id, user_id: franca.id)
Card.create!(star_count: 4, status: "pending", shop_id: shop4.id, user_id: franca.id)
Card.create!(star_count: 10, status: "completed", shop_id: shop16.id, user_id: franca.id)

Card.create!(star_count: 10, status: "completed", shop_id: shop11.id, user_id: illaria.id)
Card.create!(star_count: 3, status: "pending", shop_id: shop12.id, user_id: illaria.id)
Card.create!(star_count: 1, status: "pending", shop_id: shop13.id, user_id: illaria.id)



puts "Creating Promotion"

Promotion.create!(name: "pizza discount", description: "buy 1 pizza, get 2 stamps", shop_id: 3)
Promotion.create!(name: "pizza discount", description: "buy 1 pizza, get 2 stamps", shop_id: 12)


Promotion.create!(name: "2 for 1 gelato", description: "buy 2 gelatos for the price of 1", shop_id: 1)
Promotion.create!(name: "2 for 1 gelato", description: "buy 1 gelato, get 2 stamps", shop_id: 2)


Promotion.create!(name: "2 meals for 1", description: "2 meals for the price of 1", shop_id: 3)
Promotion.create!(name: "2 meals for 1", description: "buy 1 meal, get 2 stamps", shop_id: 13)


Promotion.create!(name: "10 percent off", description: "10 percent off any haircut or shave", shop_id: 7)
Promotion.create!(name: "10 percent off", description: "2 stamps per haircut/shave", shop_id: 19)


Promotion.create!(name: "2 for 1 joints", description: "1 joint, get 3 stamps", shop_id: 16)
Promotion.create!(name: "2 for 1 joints", description: "1 joint, get 3 stamps", shop_id: 15)






