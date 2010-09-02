class Weapon < ActiveRecord::Base

  belongs_to :hero
  has_many :perks

end
