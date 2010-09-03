class Perk < ActiveRecord::Base
  #Perks
    #strength
    #stamina
    #range
    #attack
    #defense

  belongs_to :hero
  belongs_to :enemy
  belongs_to :weapon

  validates_numericality_of :strength, :greater_than_or_equal_to => 15, :less_than => 100
  validates_numericality_of :stamina,:greater_than_or_equal_to => 15,:less_than => 100
  validates_numericality_of :range, :greater_than_or_equal_to => 15, :less_than => 100
  validates_numericality_of :attack,:greater_than_or_equal_to => 15,:less_than => 100
  validates_numericality_of :defense, :greater_than_or_equal_to => 15, :less_than => 100
  validates_numericality_of :stamina,:greater_than_or_equal_to => 15,:less_than => 100



end  

