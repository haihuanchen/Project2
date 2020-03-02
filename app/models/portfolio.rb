class Portfolio < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :investments
    has_many :stocks, through: :investments
end
