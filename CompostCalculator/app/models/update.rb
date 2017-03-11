class Update < ApplicationRecord
    belongs_to :composters
    has_many :items
end
