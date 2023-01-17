class Property < ApplicationRecord
    include PgSearch::Model 
    ##validation
    validates :propertyName,:property_type, :unit_type, :location,:image, :amount,:wifi,:shower,:parking,:balcony, presence: true
    has_many :tenants
    has_many :housecomplains
    has_many :payments

    pg_search_scope :search_by_propertyName_and_propertyType,
    against: %i[propertyName  property_type location unit_type],
    using: {
        tsearch: {
            prefix: true
        }
    }

end
