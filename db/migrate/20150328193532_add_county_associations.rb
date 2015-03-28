class AddCountyAssociations < ActiveRecord::Migration
  def change
    rename_table :county_historical_usages, :historical_usages
    rename_table :county_future_usages,     :future_usages
    
    add_column :historical_usages, :county_id, :integer
    add_column :future_usages, :county_id, :integer
  end
end
