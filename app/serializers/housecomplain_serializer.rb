class HousecomplainSerializer < ActiveModel::Serializer
  attributes :id,:Name,:Phone,:HouseType,:Email,:complain,:property_id
end
