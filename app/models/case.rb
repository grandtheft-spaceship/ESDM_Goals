class Case < ApplicationRecord
  belongs_to :guardian
  belongs_to :kid
  belongs_to :therapist
  belongs_to :teacher
  has_many :daily_reports
end
