class User < ApplicationRecord
    has_many :reviews
    has_many :portfolios
    has_many :investments, through: :portfolios

    attr_reader :password

    def full_name
        full_name = "#{first_name} #{last_name}"
    end
end
