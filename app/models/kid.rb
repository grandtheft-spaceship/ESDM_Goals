class Kid < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :birthdate
  validates_presence_of :has_diagnosis
  validates_presence_of :guardian_id

  belongs_to :guardian
  has_one :case
  has_many :therapists, :through => :case
  has_many :goals, :through => :case
end
