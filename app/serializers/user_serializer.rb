class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :age, :address
  has_many :posts
  has_many :comments
end
