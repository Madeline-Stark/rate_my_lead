# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Teacher.destroy_all
User.destroy_all

m = User.create(username: "Lady Stark", email: "madeline@flatironschool.com", password: "password")
d = User.create(username: "Dustin", email: "dustin@flatironschool.com", password: "password")


cernan = m.created_teachers.create(name: "Cernan")
review = d.reviews.create(text: "Aight", teacher_id: 1)
review2 = m.reviews.create(text: "noice", teacher_id: 1)
nancy = m.created_teachers.create(name: "Nancy")