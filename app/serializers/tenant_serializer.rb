class TenantSerializer < ActiveModel::Serializer
  attributes :id,:name,:last_name, :phone_no,:email,:password,:property_id,:HouseType, :unit_type, :date_in,:rent_payable 
end
