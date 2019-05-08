# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities_arr = ['Sydney', 'Melbourne', 'Brisbane', 'Perth', 'Hobart', 'Adelaide']
cities_arr.each {|city| City.create(name: city)}
category = Category.create(name: "Sport")

i = 1
while i < 6
    user = User.create(
        email: "ben+#{i}@test.com",
        password: "bencrow"
    )
    user.paid = true
    user.save
    Profile.create(first_name: "ben", last_name: "crow", gender: "male", age_bracket: "18-25", description: "a cool guy", user_id: i, city_id: i)
    puts "#{i} user and profile created"
    Category.first.hobbies.create(name: Faker::Team.sport)
    puts "created #{i} hobbies"
    i += 1
end

