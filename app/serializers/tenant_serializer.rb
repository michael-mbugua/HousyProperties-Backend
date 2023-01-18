class TenantSerializer < ActiveModel::Serializer
  attributes :id,:name,:last_name, :phone_no,:email,:property_id,:HouseType, :unit_type, :date_in,:rent_payable,:password
end
