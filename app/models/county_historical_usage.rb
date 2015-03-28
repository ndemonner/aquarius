# == Schema Information
#
# Table name: county_historical_usages
#
#  id                                       :integer          not null, primary key
#  year                                     :string
#  name                                     :string
#  code                                     :string
#  state                                    :string
#  total_population                         :string
#  served_population                        :string
#  commercial_ground_withdrawals            :string
#  commercial_surface_withdrawals           :string
#  commercial_public_withdrawals            :string
#  commercial_total_use                     :string
#  commercial_reclaimed_use                 :string
#  industrial_ground_withdrawals            :string
#  industrial_surface_withdrawals           :string
#  industrial_public_withdrawals            :string
#  industrial_total_use                     :string
#  industrial_reclaimed_use                 :string
#  domestic_ground_withdrawals              :string
#  domestic_surface_withdrawals             :string
#  domestic_public_withdrawals              :string
#  domestic_total_use                       :string
#  domestic_per_capita_self_supplied        :string
#  domestic_per_capita_public_supplied      :string
#  fossil_ground_withdrawals                :string
#  fossil_surface_withdrawals               :string
#  fossil_public_withdrawals                :string
#  fossil_total_use                         :string
#  fossil_reclaimed_use                     :string
#  geothermal_ground_withdrawals            :string
#  geothermal_surface_withdrawals           :string
#  geothermal_public_withdrawals            :string
#  geothermal_total_use                     :string
#  geothermal_reclaimed_use                 :string
#  nuclear_ground_withdrawals               :string
#  nuclear_surface_withdrawals              :string
#  nuclear_public_withdrawals               :string
#  nuclear_total_use                        :string
#  nuclear_reclaimed_use                    :string
#  total_thermoelectric_ground_withdrawals  :string
#  total_thermoelectric_surface_withdrawals :string
#  total_thermoelectric_public_withdrawals  :string
#  total_thermoelectric_total_use           :string
#  total_thermoelectric_reclaimed_use       :string
#  mining_ground_withdrawals                :string
#  mining_surface_withdrawals               :string
#  mining_public_withdrawals                :string
#  mining_total_use                         :string
#  mining_reclaimed_use                     :string
#  livestock_ground_withdrawals             :string
#  livestock_surface_withdrawals            :string
#  livestock_public_withdrawals             :string
#  livestock_total_use                      :string
#  livestock_reclaimed_use                  :string
#  aquaculture_ground_withdrawals           :string
#  aquaculture_surface_withdrawals          :string
#  aquaculture_public_withdrawals           :string
#  aquaculture_total_use                    :string
#  crop_ground_withdrawals                  :string
#  crop_surface_withdrawals                 :string
#  crop_public_withdrawals                  :string
#  crop_total_use                           :string
#  crop_reclaimed_use                       :string
#  golf_ground_withdrawals                  :string
#  golf_surface_withdrawals                 :string
#  golf_public_withdrawals                  :string
#  golf_total_use                           :string
#  golf_reclaimed_use                       :string
#  total_public_reclaimed                   :string
#  created_at                               :datetime         not null
#  updated_at                               :datetime         not null
#

# NOTES ABOUT DATA
# Population is expressed in thousands
# Usage is expressed in Mgal/d

class CountyHistoricalUsage < ActiveRecord::Base
end
