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

print "Please enter a store name\n"

print ">> "

input = gets.chomp

def create_store(input)
  store = Store.create(name: input)
  store.errors.full_messages.each{|err|
    puts "ERROR: #{err}"
  }
end

create_store(input)