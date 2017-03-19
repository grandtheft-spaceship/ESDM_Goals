class Guardian < ApplicationRecord
  has_many :kids
  has_many :cases
end
