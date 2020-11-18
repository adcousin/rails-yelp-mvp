# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding restaurants
10.times do
  tmp_restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address} #{Faker::Address.country}",
    category: Restaurant.restaurant_categories.sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
  # binding.pry
  10.times do
    tmp_review = Review.new(
      rating: Random.new.rand(5),
      content: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)
    )
    tmp_review.restaurant = tmp_restaurant
    tmp_review.save
  end
end
