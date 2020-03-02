# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name, 
        user_name: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email
    )
end

20.times do 
    Portfolio.create(
        portfolio_name: Faker::Superhero.name,
        initial_cash: rand(100000..1000000),
        user_id: User.all.sample.id
    )
end
20.times do 
    Review.create(
        title: Faker::Book.title,
        content: Faker::Quotes::Shakespeare.hamlet_quote,
        rating: rand(1.0..10.0),
        user_id: User.all.sample.id,
        portfolio_id: Portfolio.all.sample.id
    )
end
