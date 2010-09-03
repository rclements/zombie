class CreateHeroes < ActiveRecord::Migration
  def self.up
    create_table :heroes do |t|
      t.string :name
      t.string :character_class_id
      t.timestamps
  end

  def self.down
    drop_table :heroes
  end
end
