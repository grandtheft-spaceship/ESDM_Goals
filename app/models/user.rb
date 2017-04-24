class User < ApplicationRecord
  has_many :daily_reports
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_uniqueness_of :email, message: 'Email Has Already Being Used'
  validates_presence_of :role
  enum role: [:guardian, :therapist, :teacher]

  def full_name
    self.first_name + " " + self.last_name
  end

  def is_guardian?
    self.role == "guardian"
  end

  def is_therapist?
    self.role == "therapist"
  end

  def is_teacher?
    self.role == "teacher"
  end

end
