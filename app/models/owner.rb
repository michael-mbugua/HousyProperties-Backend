class Owner < ApplicationRecord
    validates :Name, presence: true
    validates :Email,:Phone,:Password, presence: true

end
