require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Total Annual revenue is: $#{Store.sum('annual_revenue')}"

puts "Average annual revenue of each store is: $#{Store.average('annual_revenue')}"

puts " The number of stores that earn more than 1 Million annually are: #{Store.where('annual_revenue > 1000000').count}"




