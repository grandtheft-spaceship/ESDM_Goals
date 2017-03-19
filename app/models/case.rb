class Case < ApplicationRecord
  belongs_to :guardian
  belongs_to :kid
  belongs_to :therapist
  belongs_to :teacher
end
