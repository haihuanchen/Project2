class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]
    def index
        @reviews = Review.all
    end

    def show
    
    end 

    def new
        @review = Review.new
        @users = User.all
        @portfolio = Portfolio.find(params[:portfolio_id])
    end

    def create
        @review = Review.create(review_params)
        redirect_to portfolio_path(@review.portfolio)
    end

    def edit
        
    end

    def update
        @review.update(review_params)
        redirect_to @review
    end

    def destroy
        @review.destroy
        redirect_to users_path
    end

    private

    def review_params
        params.require(:review).permit(:title, :content,:ratings, :user_id, :portfolio_id)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end

