class Pokemon < ApplicationRecord
  validates :name, :type1, presence: true
  belongs_to :type_strength
end
