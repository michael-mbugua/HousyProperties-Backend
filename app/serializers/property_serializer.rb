class PropertySerializer < ActiveModel::Serializer
  attributes :id,:propertyName,:property_type, :unit_type, :location,:image, :amount,:wifi,:shower,:parking,:balcony
end
