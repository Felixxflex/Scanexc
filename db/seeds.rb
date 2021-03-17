# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(business_title: 'Cheesecake Factory', cusine: 'Italian', price: 'high', delivery: 'no')
Restaurant.create(business_title: 'Shokolaat', cusine: 'French', price: 'high', delivery: 'no')
Restaurant.create(business_title: 'Gordon Biersch', cusine: 'Mexican', price: 'low', delivery: 'yes')
Restaurant.create(business_title: 'Crepevine', cusine: 'Chinese', price: 'low', delivery: 'yes')
