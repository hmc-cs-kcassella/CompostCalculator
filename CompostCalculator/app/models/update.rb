class Update < ApplicationRecord
    belongs_to :composter
    has_many :items
end
