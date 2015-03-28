class AlterStateTargets < ActiveRecord::Migration
  def change
    change_column :state_targets, :reduction, :decimal
    change_column :target_usages, :industrial_reduction, :decimal
    change_column :target_usages, :domestic_reduction, :decimal
    change_column :target_usages, :agriculture_reduction, :decimal
    change_column :target_usages, :energy_reduction, :decimal
  end
end
