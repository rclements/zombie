class CreateHeroes < ActiveRecord::Migration
  def self.up
    create_table :heroes do |t|
      t.string :name
      t.text :description
      t.integer :character_class_id
      t.integer :base_strength
      t.integer :base_stamina
      t.integer :base_range
      t.integer :base_attack
      t.integer :base_defense
      t.integer :exp
      t.integer :hp
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :heroes
  end
end
