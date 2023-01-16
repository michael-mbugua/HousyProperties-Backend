class PaymentSerializer < ActiveModel::Serializer
  attributes :id,:Name,:amount,:property_id,:PhoneNumber
end
