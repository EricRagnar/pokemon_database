class TypeStrength < ApplicationRecord
  validates :name, :type_strength, presence: true
  has_many :pokemon
end
