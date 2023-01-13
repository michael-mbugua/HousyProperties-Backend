class ComplainSerializer < ActiveModel::Serializer
  attributes :id,:Name,:Phone,:HouseType,:HouseNo,:Email,:complain,:property_id
end
