# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "iggy", email: "iggy1@gmail.com", phone: "(000)-000-0000", password: "password", password_confirmation: "password")

User.create!(name: "user1", email: "user1@gmail.com", phone: "(111)-111-1111", password: "password", password_confirmation: "password")
User.create!(name: "user2", email: "user2@gmail.com", phone: "(222)-222-2222", password: "password", password_confirmation: "password")
User.create!(name: "user3", email: "user3@gmail.com", phone: "(333)-333-3333", password: "password", password_confirmation: "password")
User.create!(name: "user4", email: "user4@gmail.com", phone: "(444)-444-4444", password: "password", password_confirmation: "password")
User.create!(name: "user5", email: "user5@gmail.com", phone: "(555)-555-5555", password: "password", password_confirmation: "password")
