class Goal < ApplicationRecord
  belongs_to :case
  belongs_to :kid, :through => :cases
  belongs_to :therapist, :through => :cases
end
