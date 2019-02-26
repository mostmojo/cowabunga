# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
SurfCompany.destroy_all

puts 'Creating Surf Companies...'
surf_companies_attributes = [
  {
    name:         'Flo Riders',
    address:      '7 Boundary St, Miami E2 7JE'
  },
  {
    name:         'The Mighty Bungas',
    address:      '56A Flo High St, Miami E1 6PQ',
  },
  {
    name:         'The Surf Shack',
    address:      '56A Rida Low St, Miami E1 6ZQ',
  }
]
SurfCompany.create!(surf_companies_attributes)
puts 'Finished'