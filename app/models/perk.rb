class Perk < ActiveRecord::Base

  belongs_to :hero
  belongs_to :enemy
  belongs_to :weapon

end  

