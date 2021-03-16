# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

puts 'destroy users'
User.destroy_all
puts 'destroy movies'
Movie.destroy_all
puts 'destroy games'
Game.destroy_all
puts 'destroy genres'
Genre.destroy_all
puts 'destroy languages'
OriginalLanguage.destroy_all
puts 'destroy providers'
Provider.destroy_all

puts "Creating users..."

User.create(nickname:"leellou",  email:"contact@leellou.fr", password:"trustme")
User.create(nickname:"jeanfi",  email:"contact@jeanfi.fr", password:"trustme")

puts "Finished for users !"

puts "Creating genres..."
Genre.create(tmdb_id:18, name:"Drama")
Genre.create(tmdb_id:28, name:"Action")
Genre.create(tmdb_id:53, name:"Thriller")
Genre.create(tmdb_id:80, name:"Crime")
Genre.create(tmdb_id:10752, name:"War")
Genre.create(tmdb_id:878, name:"Science Fiction")
Genre.create(tmdb_id:16, name:"Animation")

puts "Finished for genres !"

puts "Creating languages..."
OriginalLanguage.create(iso_639_1: "nl", english_name:"Dutch")
OriginalLanguage.create(iso_639_1: "de", english_name:"German")
OriginalLanguage.create(iso_639_1: "it", english_name:"Italian")
OriginalLanguage.create(iso_639_1: "es", english_name:"Spanish")
OriginalLanguage.create(iso_639_1: "en", english_name:"English")
OriginalLanguage.create(iso_639_1: "fr", english_name:"French")

puts "Finished for languages !"

puts "Creating providers..."
Provider.create(tmdb_id:119, name:"Amazon",       logo:"https://image.tmdb.org/t/p/w92/68MNrwlkpF7WnmNPXLah69CR5cb.jpg")
Provider.create(tmdb_id:337, name:"Disney plus",  logo:"https://image.tmdb.org/t/p/w92/dgPueyEdOwpQ10fjuhL2WYFQwQs.jpg")
Provider.create(tmdb_id:8, name:"Netflix",        logo:"https://image.tmdb.org/t/p/w92/9A1JSVmSxsyaBK4SUFsYVqbAYfW.jpg")
Provider.create(tmdb_id:381, name:"Canal plus",   logo:"https://image.tmdb.org/t/p/w92/po2bO7TCFCSJmK6gZ8FFj43lPEb.jpg")
Provider.create(tmdb_id:56, name:"OCS",           logo:"https://image.tmdb.org/t/p/w92/8V7i31voizkPrOTilJgi9ttYmKL.jpg")

puts "Finished for providers !"
