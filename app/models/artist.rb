class Artist < ApplicationRecord
    has_many :arts dependent: :destroy

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence:true, uniqueness: true
end
