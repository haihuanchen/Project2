# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 20.times do 
#     Portfolio.create(
#         portfolio_name: Faker::Superhero.name,
#         initial_cash: rand(100000..1000000),
#         user_id: User.all.sample.id
#     )
# end

30.times do 
    Review.create(
        title: Faker::Book.title,
        content: Faker::Quotes::Shakespeare.hamlet_quote,
        ratings: rand(1...10),
        user_id: User.all.sample.id,
        portfolio_id: Portfolio.all.sample.id
    )
end

stock1 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 170)
stock2 = Stock.create(ticker_symbol: "AAPL", stock_name: "Apple", current_price: 295)
stock3 = Stock.create(ticker_symbol: "G", stock_name: "Genpact", current_price: 95)
stock4 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 168.5)
stock5 = Stock.create(ticker_symbol: "AAPL", stock_name: "Apple", current_price: 295)
stock6 = Stock.create(ticker_symbol: "G", stock_name: "Genpact", current_price: 95)
stock7 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 180)
stock8 = Stock.create(ticker_symbol: "AAPL", stock_name: "Apple", current_price: 295)
stock9 = Stock.create(ticker_symbol: "NKE", stock_name: "Nike", current_price: 92)
stock10 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 168.5)
stock11 = Stock.create(ticker_symbol: "AAPL", stock_name: "Apple", current_price: 295)
stock12 = Stock.create(ticker_symbol: "GOOG", stock_name: "Google", current_price: 250)
stock13 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 168)
stock14 = Stock.create(ticker_symbol: "GOOG", stock_name: "Google", current_price: 250)
stock15 = Stock.create(ticker_symbol: "GOOG", stock_name: "Google", current_price: 250)
stock16 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 180)
stock17 = Stock.create(ticker_symbol: "MSFT", stock_name: "Microsoft", current_price: 180)
stock18 = Stock.create(ticker_symbol: "GOOG", stock_name: "Google", current_price: 250)
stock19 = Stock.create(ticker_symbol: "GE", stock_name: "General Electric", current_price: 10)
stock20 = Stock.create(ticker_symbol: "GE", stock_name: "General Electric", current_price: 10)

# 200.times do 
#     Investment.create(purchase_price: rand(10..300), num_of_shares: rand(10..100), purchase_date: "2020-01-01",portfolio_id: Portfolio.all.sample.id, stock_id: Stock.all.sample.id)
# end
