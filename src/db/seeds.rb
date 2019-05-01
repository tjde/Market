# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create(name: "Sport")

for i in (1..10)
    category.hobbies.create.(name: Faker::Team.sport, :unique => true)
    puts "created #{i} hobbies"
end