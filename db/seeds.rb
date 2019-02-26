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
    name:         'Surfari Surf Shop & Surf Lessons',
    address:      ' 52 Bovard Ave # W, Ormond Beach, FL 32176, USA'
  },
  {
    name:         'EZride Surf School',
    address:      '892 NW 47th St, Pompano Beach, FL 33064, USA',
  },
  {
    name:         'Nex Generation Surf School',
    address:      '47 S Atlantic Ave, Cocoa Beach, FL 32931, USA',
  },
  {
    name:         'Jax Surf & Paddle',
    address:      '241 Atlantic Blvd #102, Neptune Beach, FL 32266, USA',
  },
  {
    name:         'School of Surf',
    address:      '200 N Atlantic Ave, Cocoa Beach, FL 32931, USA',
  },
  {
    name:         'Big Kahuna Surf School',
    address:      '1985 NE 2nd St, Deerfield Beach, FL 33441, USA',
  },
  {
    name:         'Surfguys Surf School',
    address:      'P. O. Box 510633, Melbourne Beach, FL 32951, United States',
  },
  {
    name:         'SURF Miami Beach',
    address:      '79th St, Miami Beach, FL 33141, United States',
  }
]
SurfCompany.create!(surf_companies_attributes)
puts 'Finished'
