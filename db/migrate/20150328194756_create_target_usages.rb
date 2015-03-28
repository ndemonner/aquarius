class CreateTargetUsages < ActiveRecord::Migration
  def change
    create_table :target_usages do |t|
      t.integer :county_id
      t.integer :state_target_id
      
      t.decimal :total_consumption_target
      t.decimal :industrial_reduction
      t.decimal :domestic_reduction
      t.decimal :agriculture_reduction
      t.decimal :energy_reduction
      
      t.timestamps
    end
  end
end
