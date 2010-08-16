class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.description :string
      t.is_done :boolean
      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
