class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.integer :strength
      t.integer :stamina
      t.integer :range
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end

  def self.down
    drop_table :weapons
  end
end
