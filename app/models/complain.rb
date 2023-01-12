class Complain < ApplicationRecord
    validates :Name,:Phone,:HouseType,:HouseNo,:Email,:complain, presence: true
end
