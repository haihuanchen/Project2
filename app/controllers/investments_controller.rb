class InvestmentsController < ApplicationController

    def edit
        @investment = Investment.find(params[:id])
    end

    def update
        @investment = Investment.update(investment_params)
        redirect_to investment.portfolio
    end

    def new
        @portfolios = Portfolio.all
        @stock = Stock.find(params[:stock_id])
        @investment = Investment.new
    end

    def create
        @stock = Stock.find(params[:stock_id])
        @portfolios = Portfolio.all
        @investment = Investment.new(investment_params)
        @investment.update(purchase_price: @stock.current_price, stock_id: @stock.id, purchase_date: Stock.current_date_to_YYYYMMDD)
        redirect_to portfolio_path(@investment.portfolio_id)
    end

    private

    def investment_params
        params.require(:investment).permit(:purchase_price, :num_of_shares, :purchase_date, :portfolio_id, :stock_id)
    end

end
