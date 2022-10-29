class User < ApplicationRecord
    has_many :bids
    has_many :arts, through: :bids
end
