class RenameTargetConsumption < ActiveRecord::Migration
  def change
    rename_column :target_usages, :total_consumption_target, :consumption
  end
end
