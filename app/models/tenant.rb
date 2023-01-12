class Tenant < ApplicationRecord
    ##validtion
    validates :name, :house_no, :phone_no, :unit_type, :balance_due, presence: true
    ## attributes :id, :name, :house_no, :phone_no, :unit_type, :balance_due
end
