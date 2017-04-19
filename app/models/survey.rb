class Survey < ApplicationRecord
  belongs_to :case
  has_many :questions
end
