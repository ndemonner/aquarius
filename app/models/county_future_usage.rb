# == Schema Information
#
# Table name: county_future_usages
#
#  id                                       :integer          not null, primary key
#  year                                     :string
#  name                                     :string
#  code                                     :string
#  state                                    :string
#  total_population                         :decimal(, )
#  served_population                        :decimal(, )
#  commercial_ground_withdrawals            :decimal(, )
#  commercial_surface_withdrawals           :decimal(, )
#  commercial_public_withdrawals            :decimal(, )
#  commercial_total_use                     :decimal(, )
#  commercial_reclaimed_use                 :decimal(, )
#  industrial_ground_withdrawals            :decimal(, )
#  industrial_surface_withdrawals           :decimal(, )
#  industrial_public_withdrawals            :decimal(, )
#  industrial_total_use                     :decimal(, )
#  industrial_reclaimed_use                 :decimal(, )
#  domestic_ground_withdrawals              :decimal(, )
#  domestic_surface_withdrawals             :decimal(, )
#  domestic_public_withdrawals              :decimal(, )
#  domestic_total_use                       :decimal(, )
#  domestic_per_capita_self_supplied        :decimal(, )
#  domestic_per_capita_public_supplied      :decimal(, )
#  fossil_ground_withdrawals                :decimal(, )
#  fossil_surface_withdrawals               :decimal(, )
#  fossil_public_withdrawals                :decimal(, )
#  fossil_total_use                         :decimal(, )
#  fossil_reclaimed_use                     :decimal(, )
#  geothermal_ground_withdrawals            :decimal(, )
#  geothermal_surface_withdrawals           :decimal(, )
#  geothermal_public_withdrawals            :decimal(, )
#  geothermal_total_use                     :decimal(, )
#  geothermal_reclaimed_use                 :decimal(, )
#  nuclear_ground_withdrawals               :decimal(, )
#  nuclear_surface_withdrawals              :decimal(, )
#  nuclear_public_withdrawals               :decimal(, )
#  nuclear_total_use                        :decimal(, )
#  nuclear_reclaimed_use                    :decimal(, )
#  total_thermoelectric_ground_withdrawals  :decimal(, )
#  total_thermoelectric_surface_withdrawals :decimal(, )
#  total_thermoelectric_public_withdrawals  :decimal(, )
#  total_thermoelectric_total_use           :decimal(, )
#  total_thermoelectric_reclaimed_use       :decimal(, )
#  mining_ground_withdrawals                :decimal(, )
#  mining_surface_withdrawals               :decimal(, )
#  mining_public_withdrawals                :decimal(, )
#  mining_total_use                         :decimal(, )
#  mining_reclaimed_use                     :decimal(, )
#  livestock_ground_withdrawals             :decimal(, )
#  livestock_surface_withdrawals            :decimal(, )
#  livestock_public_withdrawals             :decimal(, )
#  livestock_total_use                      :decimal(, )
#  aquaculture_ground_withdrawals           :decimal(, )
#  aquaculture_surface_withdrawals          :decimal(, )
#  aquaculture_public_withdrawals           :decimal(, )
#  aquaculture_total_use                    :decimal(, )
#  crop_ground_withdrawals                  :decimal(, )
#  crop_surface_withdrawals                 :decimal(, )
#  crop_public_withdrawals                  :decimal(, )
#  crop_total_use                           :decimal(, )
#  crop_reclaimed_use                       :decimal(, )
#  golf_ground_withdrawals                  :decimal(, )
#  golf_surface_withdrawals                 :decimal(, )
#  golf_public_withdrawals                  :decimal(, )
#  golf_total_use                           :decimal(, )
#  golf_reclaimed_use                       :decimal(, )
#  total_public_reclaimed                   :decimal(, )
#  created_at                               :datetime         not null
#  updated_at                               :datetime         not null
#

class CountyFutureUsage < ActiveRecord::Base
end
