class Portfolio < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :investments
    has_many :stocks, through: :investments

    
    def array_data 
        data = []
        stocks.each_with_index do |s,i|
            chunk = []
            chunk << s.stock_name
            chunk << s.current_price
            chunk << self.investments[i].purchase_price
            chunk << self.investments[i].num_of_shares
            data << chunk
        end 
        data
    end 
end
