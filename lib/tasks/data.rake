namespace :data do
  task import: :environment do |t|
    require 'csv'

    table = CSV.open('waterdata.csv', col_sep: "\t", headers: true).read
    table.each do |row|
      county = County.where({
        name: row["county_nm"],
        code: row["county_cd"],
        state: row["state"]
      }).first_or_create!
      
      chu = HistoricalUsage.new

      chu.year = row["year"].to_i
      chu.county = county
      
      chu.total_population = row["Total Population total population of area, in thousands"]
      chu.served_population = row["Public Supply total population served, in thousands"]
      chu.commercial_ground_withdrawals = row["Commercial total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.commercial_surface_withdrawals = row["Commercial total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.commercial_public_withdrawals = row["Commercial deliveries from public supply, in Mgal/d"]
      chu.commercial_total_use = row["Commercial total consumptive use, in Mgal/d"]
      chu.commercial_reclaimed_use = row["Commercial reclaimed wastewater, in Mgal/d"]
      chu.industrial_ground_withdrawals = row["Industrial total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.industrial_surface_withdrawals = row["Industrial total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.industrial_public_withdrawals = row["Industrial deliveries from public supply, in Mgal/d"]
      chu.industrial_total_use = row["Industrial total consumptive use, in Mgal/d"]
      chu.industrial_reclaimed_use = row["Industrial reclaimed wastewater, in Mgal/d"]
      chu.domestic_ground_withdrawals = row["Domestic total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.domestic_surface_withdrawals = row["Domestic total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.domestic_public_withdrawals = row["Domestic deliveries from public supply, in Mgal/d"]
      chu.domestic_total_use = row["Domestic total consumptive use, in Mgal/d"]
      chu.domestic_per_capita_self_supplied = row["Domestic per capita use, self-supplied, in gallons/person/day"]
      chu.domestic_per_capita_public_supplied = row["Domestic per capita use, public-supplied, in gallons/person/day"]
      chu.fossil_ground_withdrawals = row["Fossil-fuel Thermoelectric Power total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.fossil_surface_withdrawals = row["Fossil-fuel Thermoelectric Power total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.fossil_public_withdrawals = row["Fossil-fuel Thermoelectric Power deliveries from public supply, in Mgal/d"]
      chu.fossil_total_use = row["Fossil-fuel Thermoelectric Power total consumptive use, in Mgal/d"]
      chu.fossil_reclaimed_use = row["Fossil-fuel Thermoelectric Power reclaimed wastewater, in Mgal/d"]
      chu.geothermal_ground_withdrawals = row["Geothermal Thermoelectric Power total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.geothermal_surface_withdrawals = row["Geothermal Thermoelectric Power total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.geothermal_public_withdrawals = row["Geothermal Thermoelectric Power deliveries from public supply, in Mgal/d"]
      chu.geothermal_total_use = row["Geothermal Thermoelectric Power total consumptive use, in Mgal/d"]
      chu.geothermal_reclaimed_use = row["Geothermal Thermoelectric Power reclaimed wastewater, in Mgal/d"]
      chu.nuclear_ground_withdrawals = row["Nuclear Thermoelectric Power total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.nuclear_surface_withdrawals = row["Nuclear Thermoelectric Power total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.nuclear_public_withdrawals = row["Nuclear Thermoelectric Power deliveries from public supply, in Mgal/d"]
      chu.nuclear_total_use = row["Nuclear Thermoelectric Power total consumptive use, in Mgal/d"]
      chu.nuclear_reclaimed_use = row["Nuclear Thermoelectric Power reclaimed wastewater, in Mgal/d"]
      chu.total_thermoelectric_ground_withdrawals = row["Total Thermoelectric Power total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.total_thermoelectric_surface_withdrawals = row["Total Thermoelectric Power total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.total_thermoelectric_total_use = row["Total Thermoelectric Power total consumptive use, in Mgal/d"]
      chu.total_thermoelectric_reclaimed_use = row["Total Thermoelectric Power reclaimed wastewater, in Mgal/d"]
      chu.mining_ground_withdrawals = row["Mining total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.mining_surface_withdrawals = row["Mining total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.mining_total_use = row["Mining total consumptive use, in Mgal/d"]
      chu.mining_reclaimed_use = row["Mining reclaimed wastewater, in Mgal/d"]
      chu.livestock_ground_withdrawals = row["Livestock (Stock) total self-supplied withdrawals, groundwater, in Mgal/d"] + row["Livestock (Animal Specialties) total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.livestock_surface_withdrawals = row["Livestock (Stock) total self-supplied withdrawals, surface water, in Mgal/d"] + row["Livestock (Animal Specialties) total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.livestock_total_use = row["Livestock consumptive use, fresh, in Mgal/d"]
      chu.aquaculture_ground_withdrawals = row["Aquaculture total self-supplied withdrawals, groundwater, in Mgal/d"]
      chu.aquaculture_surface_withdrawals = row["Aquaculture total self-supplied withdrawals, surface water, in Mgal/d"]
      chu.aquaculture_public_withdrawals = row[""]
      chu.aquaculture_total_use = row["Aquaculture total consumptive use, in Mgal/d"]
      chu.crop_ground_withdrawals = row["Irrigation, Crop self-supplied groundwater withdrawals for crops, fresh, in Mgal/d"]
      chu.crop_surface_withdrawals = row["Irrigation, Crop self-supplied surface-water withdrawals for crops, fresh, in Mgal/d"]
      chu.crop_total_use = row["Irrigation, Crop consumptive use for crops, fresh, in Mgal/d"]
      chu.crop_reclaimed_use = row["Irrigation, Crop reclaimed wastewater for crops, in Mgal/d"]
      chu.golf_ground_withdrawals = row["Irrigation, Golf Courses self-supplied groundwater withdrawals for golf courses, fresh, in Mgal/d"]
      chu.golf_surface_withdrawals = row["Irrigation, Golf Courses self-supplied surface-water withdrawals for golf courses, fresh, in Mgal/d"]
      chu.golf_total_use = row["Irrigation, Golf Courses consumptive use for golf courses, fresh, in Mgal/d"]
      chu.golf_reclaimed_use = row["Irrigation, Golf Courses reclaimed wastewater for golf courses, in Mgal/d"]
      chu.total_public_reclaimed = row["Wastewater Treatment reclaimed wastewater released by public wastewater facilities, in Mgal/d"]
      chu.save!
    end
  end
end
