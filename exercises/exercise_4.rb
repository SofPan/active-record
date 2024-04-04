require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

puts "Men's clothing stores"
for store in @mens_stores
  puts store.name
end

@womens_stores_low_ar = Store.where(womens_apparel: true).group("id").having("annual_revenue < ?", 1000000)

puts "Women's clothing stores with annual revenue under $1M"
for store in @womens_stores_low_ar
  puts store.name
end