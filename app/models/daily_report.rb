class DailyReport < ApplicationRecord
  belongs_to :guardian, optional: true
  belongs_to :therapist, optional: true
  belongs_to :teacher, optional: true
  belongs_to :case
end
