class Tenant < ApplicationRecord
    ##validtion
    validates :name, :house_no, :phone_no, :unit_type, :balance_due,:property_id, presence: true
    belongs_to :property
end
