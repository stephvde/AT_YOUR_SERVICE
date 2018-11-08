# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Category.create(name: "DIY", message: "Get the help you need building that IKEA dresser!", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Pets", message: "Your dog is running around the house? Let us walk him in the park.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Housekeeping", message: "Your house is a mess? We can help!", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Events", message: "Need a hand hosting your birthday party? We got you.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Gardening", message: "Accept it... all your plants die. Hire someone with a green thumb.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Transport", message: "There is no way you can lift all those boxes. Let us help.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Tutoring", message: "Calculus... am I right?", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "IT", message: "Is your mom calling you again to fix the computer? Send her someone to help.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Child care", message: "You guys need a break. We'll watch the kids.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Health care", message: "From nurses to masseuses.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")
Category.create(name: "Other", message: "I am sure you'll find what you need here.", photo: "https://res.cloudinary.com/dezbiqloj/image/upload/v1541675722/childcare.jpg")

puts 'Done!'
