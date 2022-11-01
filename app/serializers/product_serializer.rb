class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :imageUrl, :brand_id
end
