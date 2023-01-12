class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :property_type, :unit_type, :location, :image, :amount
end
