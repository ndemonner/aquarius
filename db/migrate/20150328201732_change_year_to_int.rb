class ChangeYearToInt < ActiveRecord::Migration
  def change
    remove_column :future_usages, :year, :string
    remove_column :historical_usages, :year, :string

    add_column :future_usages, :year, :integer
    add_column :historical_usages, :year, :integer
  end
end
