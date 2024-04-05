require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jimbob", last_name: "Joe", hourly_rate: 50)
@store1.employees.create(first_name: "Kane", last_name: "Bane", hourly_rate: 100)
@store1.employees.create(first_name: "Dingo", last_name: "Badboi", hourly_rate: 40)
@store1.employees.create(first_name: "Bob", last_name: "Loblaw", hourly_rate: 160)

@store2.employees.create(first_name: "Allie", last_name: "Catz", hourly_rate: 30)
@store2.employees.create(first_name: "Zac", last_name: "Attac", hourly_rate: 200)
@store2.employees.create(first_name: "Sof", last_name: "Aloaf", hourly_rate: 200)
@store2.employees.create(first_name: "Mister", last_name: "Lister", hourly_rate: 50)
@store2.employees.create(first_name: "Sister", last_name: "Twister", hourly_rate: 80)