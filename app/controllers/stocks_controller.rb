class StocksController < ApplicationController

    def new
        @stock = Stock.new
    end

    def create
        @stock = Stock.create(stock_params)
        redirect_to new_stock_path
    end

    private

    def stock_params
        params.require(:stock).permit(:ticker_symbol, :stock_name, :current_price)
    end
end
