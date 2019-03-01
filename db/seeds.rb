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
    description:  "At Surfari Surf School we offer the best Surf Lessons in Ormond Beach, Florida. Surfari surf lessons are for people of all ages. In a surf lesson, you will learn the proper techniques for paddling, positioning yourself on the board, standing, and wave selection. After the lesson, you may use the board to practice the skills you learned. We are confident that after the lesson you will be able to surf on your own!",
    facilities:   '
                    Use of surfboard and leash
                    Use of wetsuit and/or rash-guard t-shirt
                    Complimentary bathrooms in the surf shopParking
                    Rental surf boards or stand up paddle boards',
    number:       '+1 386-299-3609',
    email:        'admin@surfarisurfshop.',
  },
  {
    name:         'EZride Surf School',
    address:      '892 NW 47th St, Pompano Beach, FL 33064, USA',
    description:  "We provide professional surf lessons for Florida residents and vacationers. Our surf lessons are offered in many beach areas of South Florida and Central Florida. Including Fort Pierce, West Palm, Boca Raton, Deerfield, Pompano, Fort Lauderdale, Hollywood and Miami Beaches. We are currently offering surf lessons 7 days a week, for all ages and skill levels.",
    facilities:   'All lessons include water safety
                  Our surf instructors are CPR certified and experienced surfers
                  We provide safe soft surfboards to help your balance',
    number:       '+1 954-803-7988',
    email:        'contact@ezridesurfschool.com',
  },
  {
    name:         'Nex Generation Surf School',
    address:      '47 S Atlantic Ave, Cocoa Beach, FL 32931, USA',
    description:  'Whether you have never touched a surfboard before or ready to move to the Nex level, Nex Generation Surf School will take you there. Longboard or shortboard, we have the instructor for you! We will have you in the water and surfing on your very first day at camp or lesson. All of our surf camps have safe soft surfboards which make our camp as safe as it can get. For the more advanced surfers, you can supply your own boards if you wish to. No matter what, just make sure you get out there and have a good time.',
    facilities:   'Our surf instructors have 10 years certified and experienced surfers',
    number:       '+1 321-591-9577',
    email:        'admin@nexgensurf.com',
  },
  {
    name:         'Jax Surf & Paddle',
    address:      '241 Atlantic Blvd #102, Neptune Beach, FL 32266, USA',
    description:  "Jacksonville Surf and Paddle is North Florida's premier Surf and Stand Up Paddleboard school, Surf Camp, and Beach Rental provider. We offer a wide variety of surf, stand up paddleboard (SUP), and fitness classes specifically designed to meet your individual needs.",
    facilities:   'Retail Store
                  School & Rental Shop
                  Spring/Summer Surf Camp
                  SUP Lessons
                  SUP Eco Tours
                  SUP Fitness
                  Board & Gear Rental',
    number:       '+1 904-372-9083',
    email:        'contact@jacksonvillesurfandpaddle.com',
  },
  {
    name:         'School of Surf',
    address:      '200 N Atlantic Ave, Cocoa Beach, FL 32931, USA',
    description:  'School of Surf is based in downtown Cocoa Beach, Florida, and is run by professional surfers. No matter your age or skill level, our CPR certified instructors offer the best personal instruction. Lessons are based on the fundamentals of surfing and ocean safety.Stand up today!',
    facilities:   ' Daily lessons
                    Pop-Up Fundamentals
                    Ocean & board safety
                    Progressive maneuvers
                    Board maintenance
                    Swell tracking
                    Evening surf flicks
                    Seasonal camps
                    Advanced competition training & coaching
                    One day clinics for large groups, customize your day!',
    number:       '+1 321-406-0433',
    email:        'info@schoolofsurf.org',
  },
  {
    name:         'Big Kahuna Surf School',
    address:      '1985 NE 2nd St, Deerfield Beach, FL 33441, USA',
    description:  'Our surf school lessons are designed to teach the joys and excitement of surfing, along with an important emphasis on water safety and etiquette. Surfing is a great way to gain confidence and build self-esteem. Big Kahuna Surf School surf lessons provide excellent cardiovascular properties and are a great way to stay in shape. Most importantly though is surfing’s recuperative powers through relaxation.Through Big Kahuna Surf School’s positive environment our students leave feeling confident not only in their ability to surf, but also confidence within themselves. With our professional step surf lessons, our students leave with a smile on their faces.',
    facilities:   'Complete safety instruction
                    How to read the ocean, tides, weather and their relationship to surfing
                    Identify different types of surfboards on the market
                    Identify parts of the surfboard and their usage
                    What shapers shape into a surfboard for different riding techniques
                    Ground school: in depth study of basics of body positioning on the surfboard, how to paddle, stand and turn
                    Wave identity and which waves to catch
                    Water techniques on how to actually use the board in the surf: launching from shore, paddling through the breakers, positioning and preparing to catch a wave
                    Identifying different types of waves and the best positioning to catch the wave
                    How and when to begin paddling for the wave and when to stand
                    How to trim and turn
                    Surfing etiquette',
    number:       '+1 561-866-9460',
    email:        'info@bigkahunasurf.com',
  },
  {
    name:         'Surfguys Surf School',
    address:      'P. O. Box 510633, Melbourne Beach, FL 32951, United States',
    description:  'Would you like to be taught by highly trained professional instructors?
                  How about professional, knowledgeable, friendly, courteous service?
                  Prefer patient instructors who help make this great?
                  Would you like to have fun, and do something exciting?
                  Want to be taught by Florida’s best surf instructors, and one of the oldest programs here?
                  How about a money back guarantee?',
    facilities:   'While we offer a 2 hour regular program offered all year long,  or we offer a 4 day/3 hour per day summer surfing camp for those who have the time to practice supervised surfing in the summer months. If you cannot attend a week long program, a one day adult surf camp.
                  We’ve been at this for  18.5+ years, and have a great time helping everyone realize their potential at having surfing fun. We only succeed when you do. Meeting or exceeding you expectations everyday is our goal.
                  All surfing equipment is supplied at no extra cost for all lessons and summer surfing camps.',
    number:       '+1 321-956-3268',
    email:        'surfguys@surfguyssurf.com',
  },
  {
    name:         'SURF Miami Beach',
    address:      '79th St, Miami Beach, FL 33141, United States',
    description:  "The surf in Miami Beach caters to the beginner Miami Beach surfer as well as the intermediate and sometimes advanced Miami Beach surfers. Miami Beach's year round warm surf waters are an excellent location for learning how to surf. Our storm swells can challenge veteran surfers and our calm days are perfect for stand-up paddle surf in Miami Beach. SURFMiamiBeach.com provides Surfing and Stand Up Paddle Board Lessons in Miami Beach to individuals, families or groups looking to learn this beautiful gift of the Ocean known as surfing. We also provide Surf Board and SUP Board Rentals and Miami Beach summer surf camps, after school surfing programs and more.",
    facilities:   "All my Miami Beach surfing lessons include 100% devoted attention, surfboard of your choice, plus; optional surf video and surf shots of your surfing experience on CD or DVD.",
    number:       '+1 786-577-8737',
    email:        'info@surfmiamibeach.com',
  }
]
SurfCompany.create!(surf_companies_attributes)
puts 'Finished'
