class Kid < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :birthdate
  validates_presence_of :has_diasgnosis
  validates_presence_of :guardian_id

  belongs_to :guardian
end
