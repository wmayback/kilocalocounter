class CreateStaticData < ActiveRecord::Migration
  def change
    create_table :static_data do |t|
      t.integer :idle_burn
      t.integer :fasting_fuelage
      t.integer :lean_fuelage
    end
  end
end
