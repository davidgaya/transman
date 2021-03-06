class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.string :duration
      t.date :start
      t.integer :process
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
