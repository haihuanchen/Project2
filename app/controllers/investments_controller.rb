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
        @stocks = Stock.all
        @investment = Investment.new
    end

    def create
        @portfolios = Portfolio.all
        @stocks = Stock.all
        @investment = Invesment.create(investment_params)
        @investment.save
        redirect_to portfolio_path(@investment.portfolio)
    end

    private

    def investment_params
        params.require(:investment).permit(:purchase_price, :num_of_shares, :purchase_date, :portfolio_id, :stock_id)
    end

end
