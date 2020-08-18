# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy tools list"
Tool.destroy_all

puts "Create tools list"
wrench = Tool.create(name: "Wrench", description: "Provides grip and mechanical advantage in applying torque to turn objects")
hammer = Tool.create(name: "Hammer", description: "Weighted head fixed to a long handle that is swung to deliver an impact to a small area of an object")
ladder = Tool.create(name: "Ladder", description: "Repeated bars or steps between two upright lengths of metal ro wood used for climbing up or down something")
saw = Tool.create(name: "Saw", description: "A tough blade, wire, or chain with a hard toothed edge used to cut through material")
