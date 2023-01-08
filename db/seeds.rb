# Brands 
require 'csv'
puts 'Importing 8 brands of sneakers'
CSV.foreach(Rails.root.join('db/seeds/csv/brands.csv'), headers: true) do |row|
  Brand.create! do |brand|
    brand.id = row[0]
    brand.name = row[1]
    brand.available = row[2]
  end
end
puts '8 brands '

require 'csv'
puts 'Importing 8 labels of sneakers'
CSV.foreach(Rails.root.join('db/seeds/csv/labels.csv'), headers: true) do |row|
  Label.create! do |label|
    label.id = row[0]
    label.name = row[1]
    label.description = row[2]
    label.available = row[3]
  end
end

puts 'Importing products 50...'
a = %w[active inactive discontinued]
50.times do
  product = Product.new(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    brand_id: rand(1..8),
    status: a.sample
  )
  product.save!
end