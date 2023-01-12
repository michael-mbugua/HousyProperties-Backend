class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :house_no, :phone_no, :unit_type, :balance_due
end
