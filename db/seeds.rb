Product.destroy_all
Review.destroy_all

50.times do
  product = Product.create!(
  name: Faker::Food.unique.ingredient,
  cost: Faker::Number.decimal(2),
  origin: Faker::LordOfTheRings.location
  )
  5.times do
    Review.create!(
    author: Faker::LordOfTheRings.character,
    content_body: Faker::Lorem.characters(100),
    rating: Faker::Number.between(1, 5),
    product_id: product.id
    )
  end
  p "Created #{Review.count} reviews"
end
p "Created #{Product.count} products"
