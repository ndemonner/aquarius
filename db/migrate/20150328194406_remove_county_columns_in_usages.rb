class RemoveCountyColumnsInUsages < ActiveRecord::Migration
  def change
    remove_column :historical_usages, :name
    remove_column :historical_usages, :code
    remove_column :historical_usages, :state
    
    remove_column :future_usages, :name
    remove_column :future_usages, :code
    remove_column :future_usages, :state
  end
end
