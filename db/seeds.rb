# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Fournisseur.create(nom: Faker::Company.name, adresse: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.country}",
                     tel: Faker::PhoneNumber.phone_number)
end

5.times do |i|
  Produit.create(nom: Faker::Lorem.word, quantite: Faker::Number.number(2), description: Faker::Lorem.sentence,
  prix: Faker::Number.decimal(2, 3), fournisseur_id: i)
end
