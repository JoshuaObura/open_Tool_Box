# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy users"
User.destroy_all

puts "Create users"
user_2 = User.new(email: "littlemisstofu@gmail.com", password: "salad2")
user_2.save!

user_3 = User.new(email: "littlemisseggplant@gmail.com", password: "salad3")
user_3.save!

user_4 = User.new(email: "littlemissseaweed@gmail.com", password: "salad4")
user_4.save!

user_5 = User.new(email: "littlemisscheddar@gmail.com", password: "salad4")
user_5.save!

puts "Destroy tools list"
Tool.destroy_all

puts "Create tools list"

sander = Tool.new(user: user_2, name: "Sander", description: "Great tool to smooth surfaces, only used a couple of times, in good condition", category: "Home Improvement", address: "Hoxton, London")
sander.save!
polisher = Tool.new(user: user_2, name: "Polisher", description: "Portable-sized polishing tool, comes with case", category: "Home Improvement", address: "Hoxton, London")
polisher.save!
sds_drill = Tool.new(user: user_2, name: "SDS Drill", description: "Powerful drill, much more effective and efficient than a hammer drill", category: "Home Improvement", address: "Hoxton, London")
sds_drill.save!
pressure_washer = Tool.new(user: user_2, name: "Pressure Washer", description: "Washes at pressures up to 30,00 PSI, only used once", category: "Home Improvement", address: "Hoxton, London")
pressure_washer.save!

jumper_cables = Tool.new(user: user_3, name: "Jumper Cables", description: "Renting out my old jumper cables, 5m long", category: "Automotive", address: "Wandsworth, London")
jumper_cables.save!
trolley_jack = Tool.new(user: user_3, name: "Trolley Jack", description: "Mounted on wheels and can be pulled to wherever it is needed", category: "Automotive", address: "Wandsworth, London")
trolley_jack.save!
socket_set = Tool.new(user: user_3, name: "Socket Set", description: "119 piece socket-set, one piece is missing", category: "Automotive", address: "Wandsworth, London")
socket_set.save!
air_compressor = Tool.new(user: user_3, name: "Air Compressor", description: "Portable air compressor, very powerful", category: "Automotive", address: "Wandsworth, London")
air_compressor.save!

lawn_mower = Tool.new(user: user_4, name: "Lawn Mower", description: "Electrical rotary lawn mower, very energy-efficient", category: "Gardening", address: "Angel, London")
lawn_mower.save!
hedge_trimmer = Tool.new(user: user_4, name: "Hedge Trimmer", description: "Ideal for users conscious of noise as its not very loud", category: "Gardening", address: "Angel, London")
hedge_trimmer.save!
leaf_blower = Tool.new(user: user_4, name: "Leaf Blower", description: "Powerful leaf blower, effective over large areas", category: "Gardening", address: "Angel, London")
leaf_blower.save!
log_saw = Tool.new(user: user_4, name: "Log Saw", description: "Great for cutting logs for firewood", category: "Gardening", address: "Angel, London")
log_saw.save!

floor_scrubber = Tool.new(user: user_5, name: "Floor Scrubber", description: "Very easy to use, just plug in and polish floors!", category: "Cleaning", address: "Westminster, London")
floor_scrubber.save!
gutter_pipe_cleaning_set = Tool.new(user: user_5, name: "Gutter Pipe Cleaning Set", description: "Great for hard-to-reach areas", category: "Cleaning", address: "Westminster, London")
gutter_pipe_cleaning_set.save!
pressure_washer = Tool.new(user: user_5, name: "Pressure Washer", description: "Can be used to clean partios, cars, wheelies bins, etc.", category: "Cleaning", address: "Westminster, London")
pressure_washer.save!
power_vacuum = Tool.new(user: user_5, name: "Power Vacuum", description: "Very powerful tool to clean tough carpets across wide areas", category: "Cleaning", address: "Westminster, London")
power_vacuum.save!

