# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(first_name:"Rose", last_name:"Smith")

booking = Booking.create(user_id: 1, pet_name:"Goofy", phone_number:"888-888-8888", email:"rofadalua@hotmail.com", description:"your request for Goofy")