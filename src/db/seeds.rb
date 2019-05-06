# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create(name: "Sport")
i = 0
while i < 11
    Category.first.hobbies.create(name: Faker::Team.sport)
    puts "created #{i} hobbies"
    i += 1
end

city = City.create([{ :name => 'Sydney' }, { :name => 'Melbourne' }, { :name => 'Brisbane' }, { :name => 'Perth' }, { :name => 'Tasmania' }])
i = 0
while i < city.length
    City.create
    puts "created #{i} cities"
    i += 1
end