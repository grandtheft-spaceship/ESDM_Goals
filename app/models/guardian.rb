class Guardian < User
  has_many :kids
  has_many :cases
end
