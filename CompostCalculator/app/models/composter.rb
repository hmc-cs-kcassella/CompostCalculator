class Composter < ApplicationRecord
  has_many :ComposterUpdate, dependent: :destroy
end
