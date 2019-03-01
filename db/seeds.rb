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
    address:      ' 52 Bovard Ave # W, Ormond Beach, FL 32176, USA',
    image:        "https://bouyahwatersports.com/ocean-terrace-beach/wp-content/uploads/sites/3/2018/06/ot-700.jpg)",
    price:        '20$ per hour'
  },
  {
    name:         'EZride Surf School',
    address:      '892 NW 47th St, Pompano Beach, FL 33064, USA',
    image:        "https://images.unsplash.com/photo-1500520198921-6d4704f98092?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=625&q=80",
    price:        '45$ per hour'
  },
  {
    name:         'Nex Generation Surf School',
    address:      '47 S Atlantic Ave, Cocoa Beach, FL 32931, USA',
    image:        "https://bouyahwatersports.com/hollywood-beach-marriott/wp-content/uploads/sites/11/2018/06/hollywood-beach-final.jpg",
    price:         '32$ per hour'
  },
  {
    name:         'Jax Surf & Paddle',
    address:      '241 Atlantic Blvd #102, Neptune Beach, FL 32266, USA',
    image:        "https://bouyahwatersports.com/mondrian-south-beach-hotel/wp-content/uploads/sites/4/2018/06/mondrian0sunset-700.jpg",
    price:        '45$ per hour'
  },
  {
    name:         'School of Surf',
    address:      '200 N Atlantic Ave, Cocoa Beach, FL 32931, USA',
    image:        "https://bouyahwatersports.com/hilton-clearwater/wp-content/uploads/sites/17/2018/06/hilton-clearwater.jpg",
    price:        '38$ per hour'
  },
  {
    name:         'Big Kahuna Surf School',
    address:      '1985 NE 2nd St, Deerfield Beach, FL 33441, USA',
    image:        "https://bouyahwatersports.com/miami-beach-resort-spa/wp-content/uploads/sites/9/2018/06/mb-resort-700.jpg",
    price:        '32$ per hour'
  },
  {
    name:         'Surfguys Surf School',
    address:      'P. O. Box 510633, Melbourne Beach, FL 32951, United States',
    image:        "https://bouyahwatersports.com/lummus-park/wp-content/uploads/sites/2/2018/10/lummus-park-water-sports-south-beach-toddd.jpg",
    price:        '28$ per hour'
  },
  {
    name:         'SURF Miami Beach',
    address:      '79th St, Miami Beach, FL 33141, United States',
    image:        "https://bouyahwatersports.com/lummus-park/wp-content/uploads/sites/2/2018/10/lummus-park-water-sports-south-beach-toddd.jpg",
    price:        '58$ per hour'
  }
]
SurfCompany.create!(surf_companies_attributes)
puts 'Finished'
