# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities_arr = ['Sydney', 'Melbourne', 'Brisbane', 'Perth', 'Hobart', 'Adelaide']
cities_arr.each {|city| City.create(name: city)}
category = Category.new(name: "Outdoor")
category.save
o_hobbies_arr = ["Surfing", "Hiking", "Scuba Diving", "Running", "Bouldering", "Rock Climbing", "Mountain Biking", "Swimming", "Fishing", "Sailing", "Canyoning", "Orienteering", "Archery", "Tennis", "Acrobatics"]
o_hobbies_arr.each {|hobby| Category.first.hobbies.create(name: hobby)}
category = Category.new(name: "Creative")
category.save
c_hobbies_arr = ["Painting", "Quilting", 'Cross-stitch', "Knitting", "Origami", "Pottery", "Scrapbooking", "Cheese Making", "Candle Making", "Writing"]
c_hobbies_arr.each {|hobby| Category.find(2).hobbies.create(name: hobby)}
category = Category.new(name: "Indoor")
category.save
i_hobbies_arr = ["Board Games", "Video Games", "Dungeons & Dragons", "Beatboxing", "Improv", "Stand Up", "Book Club", "Story Telling", "Colouring", "Movies"]
i_hobbies_arr.each {|hobby| Category.find(3).hobbies.create(name: hobby)}

i = 1
while i < 6
    user = User.create(
        email: "ben+#{i}@test.com",
        password: "bencrow"
    )
    user.paid = true
    user.save
    Profile.create(first_name: "ben", last_name: "crow#{i}", gender: "male", age_bracket: "18-25", description: "a cool guy", user_id: i, city_id: i)
    puts "#{i} user and profile created"
    i += 1
end

