class CartController < ApplicationController



    def update
      
  
      add_nacho_to_cart(params[:stock_id])
  
  
      byebug
  
  
      redirect_to nachos_path
    end
  
  
  end