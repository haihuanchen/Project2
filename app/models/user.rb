class User < ApplicationRecord
    has_many :reviews
    has_many :portfolios
    has_many :investments, through: :portfolios
end
