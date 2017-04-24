class Therapist < User
  has_many :cases
  has_many :kids, :through => :cases
  has_many :goals, :through => :cases
  has_many :daily_reports
end
