class World < ActiveRecord::Base

  has_many :locations
  has_one :hero

end
