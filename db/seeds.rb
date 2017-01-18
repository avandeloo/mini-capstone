

5.times do 
  product = Product.new(name: Faker::Superhero.name, price: Faker::Commerce.price.to_i, image: Faker::StarWars.wookie_sentence, description: Faker::StarWars.quote, release_date: Faker::Date.between(7.year.ago, Date.today))
  product.save
end