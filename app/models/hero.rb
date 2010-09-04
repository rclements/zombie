class Hero < ActiveRecord::Base

  belongs_to :world
  has_many :stats
  has_many :weapons

  validates_numericality_of :base_strength, :greater_than_or_equal_to => 15, :less_than => 100
  validates_numericality_of :base_stamina,:greater_than_or_equal_to => 15,:less_than => 100
  validates_numericality_of :base_range, :greater_than_or_equal_to => 15, :less_than => 100
  validates_numericality_of :base_attack,:greater_than_or_equal_to => 15,:less_than => 100
  validates_numericality_of :base_defense, :greater_than_or_equal_to => 15, :less_than => 100

  def strength
    #@weapon = Weapon.find(params[:id])
    strength = base_strength
  end

  def stamina
    #@weapon = Weapon.find(params[:id])
    stamina = base_stamina
  end

  def range
    #@weapon = Weapon.find(params[:id])
    range = base_range
  end
  
  def attack
    #@weapon = Weapon.find(params[:id])
    attack = base_attack 
  end

  def defense
    #@weapon = Weapon.find(params[:id])
    defense = base_defense
  end

end
