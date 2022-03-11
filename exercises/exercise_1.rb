require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
#https://edgeguides.rubyonrails.org/active_record_basics.html   section: 5.1


burnaby = Store.new do |a|
  a.name = "Burnaby"
  a.annual_revenue = 300000
  a.mens_apparel = true
  a.womens_apparel = true
end

burnaby.save

richmond = Store.new do |a|
  a.name = "Richmond"
  a.annual_revenue = 1260000
  a.mens_apparel = false
  a.womens_apparel = true
end

richmond.save

gastown = Store.new do |a|
  a.name = "Gastown"
  a.annual_revenue = 190000
  a.mens_apparel = true
  a.womens_apparel = false
end

gastown.save

puts Store.count

