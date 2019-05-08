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
while i < 7
    user = User.new(
        email: "ben+#{i}@test.com",
        password: "12345678"
    )
    user.paid = true
    user.save
    Profile.create(user_id: user.id, first_name: "ben+#{i}", last_name: "crow", gender: "male", age_bracket: "18-26", description: "a test profile", city_id: i)
    Category.first.hobbies.create(name: Faker::Team.sport)
    puts "created #{i} hobbies"
    i += 1
end