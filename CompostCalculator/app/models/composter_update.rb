class ComposterUpdate < ApplicationRecord
  belongs_to :Composter
  has_many :Items
end
