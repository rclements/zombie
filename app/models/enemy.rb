class Enemy < ActiveRecord::Base

  belongs_to :world
  belongs_to :location
  has_many :perks

end
