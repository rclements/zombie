class Hero < ActiveRecord::Base

  belongs_to :world
  has_many :stats
  has_many :weapons
  has_many :perks

end
