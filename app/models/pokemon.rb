class Pokemon < ApplicationRecord
  validates :name, :type1, presence: true
end
