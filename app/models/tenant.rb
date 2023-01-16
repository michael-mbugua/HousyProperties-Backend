class Tenant < ApplicationRecord
    ##validtion
    has_secure_password
    validates :name,:last_name, :email ,:phone_no, presence: true
    belongs_to :property
end
