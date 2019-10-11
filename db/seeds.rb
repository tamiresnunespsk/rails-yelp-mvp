require 'faker'
category_list = %w[chinese italian japanese french belgian]
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    category: category_list.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!

  5.times do
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: rand(0..5),
      restaurant_id: restaurant.id
    )
    review.save!
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
