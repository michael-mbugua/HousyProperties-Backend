class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :house_no, :phone_no, :unit_type, :date_in, :balance_due
end
