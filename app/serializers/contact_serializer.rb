class ContactSerializer < ActiveModel::Serializer
  attributes :id,:Name,:Email,:phone,:message
end
