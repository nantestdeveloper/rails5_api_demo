class RentalPropertySerializer < ActiveModel::Serializer
  attributes :id,:name, :address, :rooms, :bathrooms, :price_cents
end
