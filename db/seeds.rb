# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name:"Perrine", email:"perrine@yopmail.com")
User.create(first_name:"Clara", email:"clara@yopmail.com")
User.create(first_name:"Claude", email:"claude@yopmail.com")
User.create(first_name:"Bertrand", email:"bertrand@yopmail.com")
User.create(first_name:"Martine", email:"martine@yopmail.com")

Event.create(start_date: Time.now, duration:"50", title:"evenement 1", description:"evenement test", price:"10", location:"Paris")
