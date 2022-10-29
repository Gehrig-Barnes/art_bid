class Art < ApplicationRecord
  belongs_to :artist
  has_many :reviews
  has_many :bids
  has_many :users, through: :bids
end
