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
# ----- Employees with errors ----- #
puts "missing first name test"
@no_first_name = @store1.employees.create(first_name: nil, last_name: "name", hourly_rate: 40)
puts @no_first_name.valid?
puts @no_first_name.errors.full_messages

puts "missing last name test"
@no_last_name = @store1.employees.create(first_name: "name", last_name: nil, hourly_rate: 40)
puts @no_last_name.valid?
puts @no_last_name.errors.full_messages

puts "missing hourly rate test"
@no_hourly_rate = @store1.employees.create(first_name: "name", last_name: "name", hourly_rate: nil)
puts @no_hourly_rate.valid?
puts @no_hourly_rate.errors.full_messages

puts "Hourly rate is too low test"
@low_hourly_rate = @store1.employees.create(first_name: "name", last_name: "name", hourly_rate: 20)
puts @low_hourly_rate.valid?
puts @low_hourly_rate.errors.full_messages

puts "Hourly rate is too high test"
@high_hourly_rate = @store1.employees.create(first_name: "name", last_name: "name", hourly_rate: 250)
puts @high_hourly_rate.valid?
puts @high_hourly_rate.errors.full_messages


puts "employee does not belong to a store test"
@storeless_employee = Employee.create(first_name: "name", last_name: "name", hourly_rate: 40)
puts @storeless_employee.valid?
puts @storeless_employee.errors.full_messages

# ----- Stores with errors ----- #
puts "Store name is less than 3 characters test"
@short_store_name = Store.create(name: "AB", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
puts @short_store_name.valid?
puts @short_store_name.errors.full_messages

puts "Annual revenue is not a number test"
@wrong_revenue = Store.create(name: "ABCD", annual_revenue: "One million dollars", mens_apparel: true, womens_apparel: true)
puts @wrong_revenue.valid?
puts @wrong_revenue.errors.full_messages

puts "Store does not carry mens or womens apparel  test"
@no_apparel = Store.create(name: "EFGH", annual_revenue: 300000, mens_apparel: false, womens_apparel: false)
puts @no_apparel.valid?
puts @no_apparel.errors.full_messages

# User inputs and validations

puts "----- User Inputs and Validations -----"

puts "Please enter a store name: "
@user_store_name = gets.chomp

@user_store = Store.create(name: @user_store_name)

user_errors = @user_store.errors

for error in user_errors
  puts error.full_message
end





