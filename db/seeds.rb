# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Cuisine.any?
  Cuisine.create!(name: 'Thai')
  Cuisine.create!(name: 'Chinese')
  Cuisine.create!(name: 'Italian')
  Cuisine.create!(name: 'Mexican')
  Cuisine.create!(name: 'American')
end
