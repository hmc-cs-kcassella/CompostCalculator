class ComposterUpdate < ApplicationRecord
  belongs_to :Composter, dependent: :destroy
  has_many :Items
end
