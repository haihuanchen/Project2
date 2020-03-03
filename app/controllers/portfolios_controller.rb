class PortfoliosController < ApplicationController
    before_action :find_portfolio, only: [:show, :edit, :update, :destroy]
    def index
        @portfolios = Portfolio.all
    end

    def show
    
    end 

    def new
        @portfolio = Portfolio.new
        @users = User.all
    end

    def create
        @portfolio = Portfolio.create(portfolio_params)
        redirect_to @portfolio
    end

    def edit
        
    end

    def update
        @portfolio.update(portfolio_params)
        redirect_to @portfolio
    end

    def destroy
        @portfolio.destroy
        redirect_to portfolios_path
    end

    private

    def portfolio_params
        params.require(:portfolio).permit(:portfolio_name, :initial_cash, :user_id)
    end

    def find_portfolio
        @portfolio = Portfolio.find(params[:id])
    end

end
