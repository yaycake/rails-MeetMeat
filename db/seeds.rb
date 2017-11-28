# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PICTURES = ["http://www.89yn.com/me/myimagem/828554.jpg",
            "http://www.89yn.com/me/myimagem/828538.jpg",
            "http://www.89yn.com/me/myimagem/828511.jpg",
            "http://www.89yn.com/me/myimagem/767777.jpg",
            "http://www.89yn.com/me/myimagem/770252.jpg",
            "http://www.89yn.com/me/myimagem/803094.jpg",
            "https://cdn.shopify.com/s/files/1/1118/2334/products/Depositphotos_14430777_original_60bf1032-d69e-4ca1-9cb8-87c851a7ea25_grande.jpg?v=1483469893"]

def generate_meat
  p "creating a new profile"
  meat = Meater.new()
  meat.email = Faker::Internet.email
  meat.password = "Thispasswordexists"
  meat.first_name = Faker::Name.first_name
  meat.last_name = Faker::Name.last_name
  meat.remote_photo_url = PICTURES.sample
  meat.gender = ["male", "female", "unknown"].sample
  meat.age = 18 + (0..99).to_a.sample
  meat.weight = 50 + (0..50).to_a.sample
  meat.height = 145 + (0..50).to_a.sample
  meat.summary = Faker::RickAndMorty.quote
  meat.display_name = Faker::Pokemon.name
  meat.occupation = ["Just being Meat", "Restaurant Manager", "Beauty Pageant", "Allen Sanchez"].sample
  meat.education = Faker::University.name
  meat.description = Faker::Hipster.paragraphs(1, true).join(" ")
  meat.price = 25 + (0..1500).to_a.sample
  meat.nationality = ["Chinese", "Russian", "French", "Americain", "Thai", "Somewhere"].sample
  meat.location = "Chengdu"
  meat.save
end

5.times do
  generate_meat
end
