class Restaurant < ApplicationRecord
	has_and_belongs_to_many :food_items
end
