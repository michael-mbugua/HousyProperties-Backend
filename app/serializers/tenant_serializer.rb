class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_no, :unit_type, :date_in, :balance_due,:property_id
end
