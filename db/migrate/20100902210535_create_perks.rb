class CreatePerks < ActiveRecord::Migration
  def self.up
    create_table :perks do |t|
      t.integer :strength
      t.integer :stamina
      t.integer :range
      t.integer :attack
      t.integer :defense
  end

  def self.down
    drop_table :perks
  end
end
