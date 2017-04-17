class Therapist < ApplicationRecord
  has_many :cases
  has_many :goals, :through => :cases
end
