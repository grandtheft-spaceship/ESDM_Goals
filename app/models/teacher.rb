class Teacher < User
  has_many :cases
  has_many :daily_reports
  has_many :kids, :through => :cases
end
