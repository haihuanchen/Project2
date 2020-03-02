class Stock < ApplicationRecord
    has_many :investments
    has_many :portfolios, through: :investments
    
end
