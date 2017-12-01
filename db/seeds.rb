# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# PICTURES = ["http://www.89yn.com/me/myimagem/828554.jpg",
#             "http://www.89yn.com/me/myimagem/828538.jpg",
#             "http://www.89yn.com/me/myimagem/828511.jpg",
#             "http://www.89yn.com/me/myimagem/767777.jpg",
#             "http://www.89yn.com/me/myimagem/770252.jpg",
#             "http://www.89yn.com/me/myimagem/803094.jpg",
#             "https://cdn.shopify.com/s/files/1/1118/2334/products/Depositphotos_14430777_original_60bf1032-d69e-4ca1-9cb8-87c851a7ea25_grande.jpg?v=1483469893"]

# def generate_meat(category)
#   p "creating a new profile"
#   meat = Meater.new()
#   meat.email = Faker::Internet.email
#   meat.password = "Thispasswordexists"
#   meat.first_name = Faker::Name.first_name
#   meat.last_name = Faker::Name.last_name
#   meat.remote_photo_url = PICTURES.sample
#   meat.gender = ["male", "female", "unknown"].sample
#   meat.age = 18 + (0..99).to_a.sample
#   meat.weight = 50 + (0..50).to_a.sample
#   meat.height = 145 + (0..50).to_a.sample
#   meat.summary = Faker::RickAndMorty.quote
#   meat.display_name = Faker::Pokemon.name
#   meat.occupation = ["Just being Meat", "Restaurant Manager", "Beauty Pageant", "Allen Sanchez"].sample
#   meat.education = Faker::University.name
#   meat.description = Faker::Hipster.paragraphs(1, true).join(" ")
#   meat.price = 25 + (0..1500).to_a.sample
#   meat.nationality = ["Chinese", "Russian", "French", "Americain", "Thai", "Somewhere"].sample
#   meat.location = "Chengdu"
#   meat.user_category = category
#   meat.save
# end

# #generate demo meat
# meat = meat = Meater.new()
# meat.email = "demo@gmail.com"
# meat.password = "secret"
# meat.first_name = Faker::Name.first_name
# meat.last_name = Faker::Name.last_name
# meat.remote_photo_url = PICTURES.sample
# meat.gender = ["male", "female", "unknown"].sample
# meat.age = 18 + (0..99).to_a.sample
# meat.weight = 50 + (0..50).to_a.sample
# meat.height = 145 + (0..50).to_a.sample
# meat.summary = Faker::RickAndMorty.quote
# meat.display_name = Faker::Pokemon.name
# meat.occupation = ["Just being Meat", "Restaurant Manager", "Beauty Pageant", "Allen Sanchez"].sample
# meat.education = Faker::University.name
# meat.description = Faker::Hipster.paragraphs(1, true).join(" ")
# meat.price = 25 + (0..1500).to_a.sample
# meat.nationality = ["Chinese", "Russian", "French", "Americain", "Thai", "Somewhere"].sample
# meat.location = "Chengdu"
# meat.user_category = "meat"
# meat.save

# def generate_booking
#   book = Booking.new()
#   book.meat = Meater.find(1)
#   book.meater = Meater.find((1..12).to_a.sample)
#   book.status = ["sent", "agreed", "rejected", "finalized", "cancel"].sample
#   book.description = Faker::RickAndMorty.quote
#   book.save
# end


# 10.times do
#   generate_meat("meat")
# end
# 2.times do
#   generate_meat("meeter")
# end

# 3.times do
#   generate_booking
# end

#Create Fabien
fabien = Meater.new()
fabien.email = "fabien@gmail.com"
fabien.password = "123123"
fabien.first_name = "Fabien"
fabien.last_name = "Martin"
fabien_image_path = "app/assets/images/fabien.JPG"
fabien.photo = File.open(fabien_image_path)
fabien.gender = "male"
fabien.age = 30
fabien.weight = 90
fabien.height = 188
fabien.summary = "I love mini wechat programs..."
fabien.display_name = "Kwalish"
fabien.occupation = "Homeless"
fabien.education = "Too many uni to count"
fabien.description = "I like Sichuan food and Wechat Mini-Programs"
fabien.price = 500
fabien.nationality = "French"
fabien.location = "Chengdu"
fabien.user_category = "meat"
fabien.save

#create alina
alina = Meater.new()
alina.email = "alina@gmail.com"
alina.password = "123123"
alina.first_name = "Alina"
alina.last_name = "Kabirova"
alina_image_path = "app/assets/images/alina.JPG"
alina.photo = File.open(alina_image_path)
alina.gender = "female"
alina.age = 27
alina.weight = 55
alina.height = 165
alina.summary = "kids, Kids, KIds, KIDs, KIDS..."
alina.display_name = "Cold Winter"
alina.occupation = "Teacher"
alina.education = "Sichuan UNI"
alina.description = "Binge watching stuff"
alina.price = 500
alina.nationality = "Russian"
alina.location = "Chengdu"
alina.user_category = "meat"
alina.save

#create allen
allen = Meater.new()
allen.email = "allen@gmail.com"
allen.password = "123123"
allen.first_name = "allen"
allen.last_name = "Sanchez"
allen_image_path = "app/assets/images/allen.jpg"
allen.photo = File.open(allen_image_path)
allen.gender = "male"
allen.age = 28
allen.weight = 75
allen.height = 175
allen.summary = "Because education can be FUN..."
allen.display_name = "Fajitas"
allen.occupation = "Driver"
allen.education = "Yale, Yale and Yale"
allen.description = "Currently carrier of the FLU"
allen.price = 500
allen.nationality = "American"
allen.location = "Chengdu"
allen.user_category = "meat"
allen.save

#create dan
dan = Meater.new()
dan.email = "dan@gmail.com"
dan.password = "123123"
dan.first_name = "Dan"
dan.last_name = ""
dan_image_path = "app/assets/images/dan.JPG"
dan.photo = File.open(dan_image_path)
dan.gender = "male"
dan.age = 28
dan.weight = 85
dan.height = 185
dan.summary = "Illegal immigrant from Thailand"
dan.display_name = "Danny"
dan.occupation = "Freelancer"
dan.education = "?"
dan.description = "Buying chinese visa"
dan.price = 500
dan.nationality = "American"
dan.location = "Chengdu"
dan.user_category = "meat"
dan.save

#create dominic
dominic = Meater.new()
dominic.email = "dominic@gmail.com"
dominic.password = "123123"
dominic.first_name = "Dominic"
dominic.last_name = "Currano"
dominic_image_path = "app/assets/images/dominic.JPG"
dominic.photo = File.open(dominic_image_path)
dominic.gender = "male"
dominic.age = 30
dominic.weight = 80
dominic.height = 180
dominic.summary = "Whole but not wholesome"
dominic.display_name = "The Survivor"
dominic.occupation = "System adminitraZzzZZZZ"
dominic.education = "Somewhere in USA"
dominic.description = "Looking for a new organ!"
dominic.price = 500
dominic.nationality = "American"
dominic.location = "Chengdu"
dominic.user_category = "meat"
dominic.save

#create forrest
forrest = Meater.new()
forrest.email = "forrest@gmail.com"
forrest.password = "123123"
forrest.first_name = "Forrest"
forrest.last_name = "Ye"
forrest_image_path = "app/assets/images/forest.JPG"
forrest.photo = File.open(forrest_image_path)
forrest.gender = "male"
forrest.age = 31
forrest.weight = 75
forrest.height = 175
forrest.summary = "I own a Rabbit"
forrest.display_name = "Feeder of Rabbits"
forrest.occupation = "Rabbit feeder"
forrest.education = "Corgi School"
forrest.description = "Patient 0"
forrest.price = 500
forrest.nationality = "Chinese"
forrest.location = "Shanghai"
forrest.user_category = "meat"
forrest.save

#create grace
grace = Meater.new()
grace.email = "grace@gmail.com"
grace.password = "123123"
grace.first_name = "Grace"
grace.last_name = "Yay"
grace_image_path = "app/assets/images/grace.JPG"
grace.photo = File.open(grace_image_path)
grace.gender = "female"
grace.age = 31
grace.weight = 60
grace.height = 160
grace.summary = "Lesbian Horsebutt"
grace.display_name = "YayCake"
grace.occupation = "Drawing stuff"
grace.education = "American education"
grace.description = "Love Taiwanese food"
grace.price = 500
grace.nationality = "Chinese"
grace.location = "Taiwan, PRC"
grace.user_category = "meat"
grace.save

#create mark
mark = Meater.new()
mark.email = "mark@gmail.com"
mark.password = "123123"
mark.first_name = "Mark"
mark.last_name = "Sauceda"
mark_image_path = "app/assets/images/mark.JPG"
mark.photo = File.open(mark_image_path)
mark.gender = "male"
mark.age = 27
mark.weight = 90
mark.height = 190
mark.summary = "I love chinese new year"
mark.display_name = "M A R K Y - M A R K"
mark.occupation = "Salesman"
mark.education = "MURICAA"
mark.description = "French are objectively the best, I wish I was French"
mark.price = 500
mark.nationality = "American"
mark.location = "San California"
mark.user_category = "meat"
mark.save

#create mark
mo = Meater.new()
mo.email = "mo@gmail.com"
mo.password = "123123"
mo.first_name = "Mo"
mo.last_name = "Chaisurivirat"
mo_image_path = "app/assets/images/mo.JPG"
mo.photo = File.open(mo_image_path)
mo.gender = "male"
mo.age = 29
mo.weight = 75
mo.height = 175
mo.summary = "Happy Lemon"
mo.display_name = "happy le MO n"
mo.occupation = "Franchisee"
mo.education = "Thai Uni"
mo.description = "I am happy, as long as I have happy lemon"
mo.price = 500
mo.nationality = "Thai"
mo.location = "Bangkok"
mo.user_category = "meat"
mo.save
