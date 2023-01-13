class Property < ApplicationRecord
    ##validation
    validates :name, :property_type, :unit_type, :location, :image, :amount, presence: true
end
