class Tenant < ApplicationRecord
    ##validtion
    has_secure_password
    validates :name, :phone_no, :unit_type, :balance_due,:property_id,:date_in, presence: true
    belongs_to :property
end
