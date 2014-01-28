Week.destroy_all
a = Week.new
a.save

@week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

Day.destroy_all

7.times do |day|
monday = Day.new
monday.name = @week[day]
monday.meal1 = 200
monday.meal2 = 200
monday.meal3 = 200
monday.meal4 = 200
monday.meal5 = 200
monday.meal6 = 200
monday.meal7 = 200
monday.meal8 = 200
monday.meal9 = 200
monday.meal10 = 200
monday.week_id = a.id
monday.save
end

puts "10 meals have been made for every single week day"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
