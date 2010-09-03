class CharacterClass < ActiveRecord::Base

  belongs_to :hero

  def marine
  end

  def bezerker
  end

  def medic
  end

  def sniper
  end

end
