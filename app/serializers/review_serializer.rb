class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating
  has_one :product
  has_one :user
end
