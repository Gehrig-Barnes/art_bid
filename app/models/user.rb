class User < ApplicationRecord
    has_many :rents dependent: :destroy
    has_many :arts, through: :bids

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness:true
    validates :password, presence:true, uniqueness:true
end
