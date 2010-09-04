class CreateEnemies < ActiveRecord::Migration
  def self.up
    create_table :enemies do |t|
      t.string :name
      t.text :description
      t.integer :strength
      t.integer :stamina
      t.integer :range
      t.integer :attack
      t.integer :defense
      t.integer :exp
      t.integer :hp
      
      t.timestamps
    end
  end

  def self.down
    drop_table :enemies
  end
end
