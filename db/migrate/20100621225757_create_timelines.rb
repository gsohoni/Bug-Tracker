class CreateTimelines < ActiveRecord::Migration
  def self.up
    create_table :timelines do |t|
      t.string :description
      t.integer :hours_spent
      t.datetime :started_on
      t.references :ticket
      t.timestamps
    end
  end

  def self.down
    drop_table :timelines
  end
end
