require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

print ">"
storeX_name = gets.chomp
@storeX = Store.create(name: storeX_name)

@storeX.errors.each do |attribute, error|
  puts "#{attribute} #{error}"
end

print ">"
storeY_name = gets.chomp
@storeY = Store.create(name: storeY_name, annual_revenue: 1, mens_apparel: false, womens_apparel: false)

@storeY.errors.each do |attribute, error|
  puts "#{attribute} #{error}"
end