class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.belongs_to :week
      t.string  :name
      t.integer :meal1
      t.integer :meal2
      t.integer :meal3
      t.integer :meal4
      t.integer :meal5
      t.integer :meal6
      t.integer :meal7
      t.integer :meal8
      t.integer :meal9
      t.integer :meal10
      t.timestamps
    end
  end
end
