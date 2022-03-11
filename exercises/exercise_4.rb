require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

surrey = Store.new do |a|
  a.name = "Surrey"
  a.annual_revenue = 224000
  a.womens_apparel = true
  a.mens_apparel = false
end

surrey.save


whistler = Store.new do |a|
  a.name = "Whistler"
  a.annual_revenue = 190000
  a.womens_apparel = false
  a.mens_apparel = true
end

whistler.save

yaletown = Store.new do |a|
  a.name = "Yaletown"
  a.annual_revenue = 430000
  a.womens_apparel = true
  a.mens_apparel = true
end

yaletown.save

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts "name of stores: #{store.name} with an annual revenue of #{store.annual_revenue}"
end

@womens_store = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

for store in @womens_store
  puts "name of stores: #{store.name} with an annual revenue of less than 1 Million which is #{store.annual_revenue}"
end

