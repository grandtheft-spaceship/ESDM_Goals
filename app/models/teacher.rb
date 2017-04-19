class Teacher < User
  has_many :cases
  has_many :daily_reports
end
