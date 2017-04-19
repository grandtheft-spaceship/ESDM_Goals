class Guardian < User
  has_many :kids
  has_many :cases
  has_many :daily_reports
end
