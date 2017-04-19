class Information < ApplicationRecord
	has_many :items
	belongs_to :composter
end
