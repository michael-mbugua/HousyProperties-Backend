class Property < ApplicationRecord
    ##validation
    validates :name, :property_type, :unit_type, :location, :image, :amount, presence: true
    has_many :tenants
    has_many :housecomplains
    has_many :payments
end
