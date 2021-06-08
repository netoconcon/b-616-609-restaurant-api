# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating users'

user = User.new(email: 'seb@lewagon.org', password: '123123')
user.save!

user2 = User.new(email: 'jacquin@masterchef.com', password: '123123')
user2.save!

'creating restaurants'

restaurant2 = Restaurant.new(name: 'Pé de Fava', address: 'Av Morte Lenta', user: user)
restaurant2.save!

restaurant1 = Restaurant.new(name: 'Vintão', address: 'Vila Madalena', user: user)
restaurant1.save!

puts "temos agora #{Restaurant.count} restaurantes"

comment1 = Comment.create!(content: 'melhor restaurante', restaurant: restaurant1, user: user2 )

comment2 = Comment.create!(content: 'vc é a vergonha da profission', restaurant: restaurant2, user: user2 )

comment3 = Comment.create!(content: 'desliga o freezer a noite', restaurant: restaurant2, user: user2 )

puts "temos agora #{Comment.count} comentários"