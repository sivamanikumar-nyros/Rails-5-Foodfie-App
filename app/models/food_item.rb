class FoodItem < ApplicationRecord
	validates :name, :section, :price, presence: true
	has_and_belongs_to_many :restaurants
	has_attached_file :image
	has_attached_file :image, style: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :tagging
end
