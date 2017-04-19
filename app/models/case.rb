class Case < ApplicationRecord
  belongs_to :guardian
  belongs_to :kid
  belongs_to :therapist, optional: true
  belongs_to :teacher, optional: true
  has_many :daily_reports
  has_many :goals
end
