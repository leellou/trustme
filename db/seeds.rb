# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

User.destroy_all

puts "Creating users..."

User.create(nickname: "leellou",  email:"contact@leellou.fr", password:"trustme")
User.create(nickname: "jeanfi",  email:"contact@jeanfi.fr", password:"trustme")

puts "Finished!"
