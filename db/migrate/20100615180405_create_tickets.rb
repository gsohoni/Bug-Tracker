class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.text :desciption
      t.integer :priority
      t.integer :reported_by
      t.integer :assigned_to
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
