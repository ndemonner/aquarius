# == Schema Information
#
# Table name: target_usages
#
#  id                       :integer          not null, primary key
#  county_id                :integer
#  state_target_id          :integer
#  total_consumption_target :decimal(, )
#  industrial_reduction     :decimal(, )
#  domestic_reduction       :decimal(, )
#  agriculture_reduction    :decimal(, )
#  energy_reduction         :decimal(, )
#  created_at               :datetime
#  updated_at               :datetime
#

class TargetUsage < ActiveRecord::Base
  belongs_to :county
  belongs_to :state_target
  
  def associated_future_usage
    county.future_usages.where(year: state_target.year).first
  end
end
