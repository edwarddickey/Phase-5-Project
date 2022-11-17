class User < ApplicationRecord
    has_many :reviews
    has_many :products, through: :reviews
    has_secure_password
    validates :password, confirmation: true
    # validates :password_confirmation, presence: :true
    validates :name, presence: true, uniqueness: true
    validates :pants, presence: true, uniqueness: true
end
