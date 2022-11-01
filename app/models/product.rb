class Product < ApplicationRecord
    has_many :reviews
    belongs_to :brand
end
