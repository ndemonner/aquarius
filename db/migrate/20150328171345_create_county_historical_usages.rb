class CreateCountyHistoricalUsages < ActiveRecord::Migration
  def change
    create_table :county_historical_usages do |t|
      t.string :year
      t.string :name
      t.string :code
      t.string :state
      t.string :total_population
      t.string :served_population
      t.string :commercial_ground_withdrawals
      t.string :commercial_surface_withdrawals
      t.string :commercial_public_withdrawals
      t.string :commercial_total_use
      t.string :commercial_reclaimed_use
      t.string :industrial_ground_withdrawals
      t.string :industrial_surface_withdrawals
      t.string :industrial_public_withdrawals
      t.string :industrial_total_use
      t.string :industrial_reclaimed_use
      t.string :domestic_ground_withdrawals
      t.string :domestic_surface_withdrawals
      t.string :domestic_public_withdrawals
      t.string :domestic_total_use
      t.string :domestic_per_capita_self_supplied
      t.string :domestic_per_capita_public_supplied
      t.string :fossil_ground_withdrawals
      t.string :fossil_surface_withdrawals
      t.string :fossil_public_withdrawals
      t.string :fossil_total_use
      t.string :fossil_reclaimed_use
      t.string :geothermal_ground_withdrawals
      t.string :geothermal_surface_withdrawals
      t.string :geothermal_public_withdrawals
      t.string :geothermal_total_use
      t.string :geothermal_reclaimed_use
      t.string :nuclear_ground_withdrawals
      t.string :nuclear_surface_withdrawals
      t.string :nuclear_public_withdrawals
      t.string :nuclear_total_use
      t.string :nuclear_reclaimed_use
      t.string :total_thermoelectric_ground_withdrawals
      t.string :total_thermoelectric_surface_withdrawals
      t.string :total_thermoelectric_public_withdrawals
      t.string :total_thermoelectric_total_use
      t.string :total_thermoelectric_reclaimed_use
      t.string :mining_ground_withdrawals
      t.string :mining_surface_withdrawals
      t.string :mining_public_withdrawals
      t.string :mining_total_use
      t.string :mining_reclaimed_use
      t.string :livestock_ground_withdrawals
      t.string :livestock_surface_withdrawals
      t.string :livestock_public_withdrawals
      t.string :livestock_total_use
      t.string :livestock_reclaimed_use
      t.string :livestock_ground_withdrawals
      t.string :livestock_surface_withdrawals
      t.string :livestock_public_withdrawals
      t.string :livestock_total_use
      t.string :aquaculture_ground_withdrawals
      t.string :aquaculture_surface_withdrawals
      t.string :aquaculture_public_withdrawals
      t.string :aquaculture_total_use
      t.string :crop_ground_withdrawals
      t.string :crop_surface_withdrawals
      t.string :crop_public_withdrawals
      t.string :crop_total_use
      t.string :crop_reclaimed_use
      t.string :golf_ground_withdrawals
      t.string :golf_surface_withdrawals
      t.string :golf_public_withdrawals
      t.string :golf_total_use
      t.string :golf_reclaimed_use
      t.string :total_public_reclaimed
      t.timestamps null: false
    end
  end
end
