# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCTS
puts 'Deleting all products'
Product.destroy_all
product1 = Product.create({name: 'Classic bike', price: 400})
product2 = Product.create({name: 'Mountain bike', price: 300})
product3 = Product.create({name: 'Downhill bike', price: 700})

puts "Number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck('name')}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"


# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"
