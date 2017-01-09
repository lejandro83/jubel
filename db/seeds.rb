# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
item1 = Item.create(name: "Caminata por la playa", latitude: 1.23, longitude: 1.22, address: "La mejor direccion del mundo", phone: "1817265", item_type: 1)
item2 = Item.create(name: "Caminata por la playa 2: El regreso de los cangrejos D:", latitude: 1.23, longitude: 1.22, address: "La mejor direccion del mundo, super", phone: "1817265", item_type: 3)
itinerary = Itinerary.create(item_id: 1, date:"2/10/2017", time_start: "12:31", time_end: "12:36", price: 15.01)
itinerary2 = Itinerary.create(item_id: 2, date:"2/11/2017", time_start: "12:31", time_end: "12:36", price: 18.01)
user = User.create(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password', phone: "1231231", user_type: 4, first_name: "Pepe", last_name: "Gomez")
user2 = User.create(:email => 'test2@example.com', :password => 'password', :password_confirmation => 'password', phone: "1231231", user_type: 4, first_name: "Hugo", last_name: "Hdz")
user3 = User.create(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password', phone: "1231231", user_type: 0, first_name: "Root", last_name: "God")
experience = Experience.create(path: "Active Nature", name: "Mayas", number_of_guests: 1, user_id: 1, budget: 7000.00, itinerary: [1,2], status: 3)
experience2 = Experience.create(path: "Peace and Quiet", name: "Extreme Shit", number_of_guests: 2, user_id: 2, budget: 300.00, itinerary: [2], status: 0)

