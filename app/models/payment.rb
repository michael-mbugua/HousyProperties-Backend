class Payment < ApplicationRecord
    belongs_to :property
    validates :Name,:amount,:property_id, presence: true
end
