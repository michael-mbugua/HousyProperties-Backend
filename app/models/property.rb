class Property < ApplicationRecord
    ##validation
    validates :propertyName,:property_type, :unit_type, :location,:image, :amount,:wifi,:shower,:parking,:balcony, presence: true
    has_many :tenants
    has_many :housecomplains
    has_many :payments
end
