class Art < ApplicationRecord
  belongs_to :artist
  has_many :reviews dependent: :destroy
  has_many :rents dependent: :destroy
  has_many :users, through: :bids
end
