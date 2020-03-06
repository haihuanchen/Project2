class StocksController < ApplicationController

    def new
        @stock = Stock.new
    end

    def create
        current_price = Stock.get_current_stock_price(stock_params[:ticker_symbol])
        @stock = Stock.new(stock_params)
        @stock.update(current_price: current_price)
        redirect_to new_stock_investment_path(@stock)
    end

    private

    def stock_params
        params.require(:stock).permit(:ticker_symbol, :stock_name, :current_price)
    end
end
