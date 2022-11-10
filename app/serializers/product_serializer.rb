class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :imageUrl, :brand_id
  has_one :brand
  has_many :reviews
end
