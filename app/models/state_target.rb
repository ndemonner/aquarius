# == Schema Information
#
# Table name: state_targets
#
#  id         :integer          not null, primary key
#  name       :string
#  reduction  :decimal(, )
#  year       :integer
#  created_at :datetime
#  updated_at :datetime
#

class StateTarget < ActiveRecord::Base
  has_many :target_usages
  
  after_create :create_target_usages
  after_save :update_county_targets, if: :reduction_changed?
  
  def county_ids
    County.where(state: name).pluck(:id)
  end
  
  def future_usages
    FutureUsage.where(year: year, county_id: county_ids)
  end
  
  def create_target_usages
    future_usages.find_each do |future|
      target_usages.create!({
        county_id: future.county_id,
        industrial_reduction: 0,
        domestic_reduction: 0,
        agriculture_reduction: 0,
        energy_reduction: 0,
      })
    end
  end
  
  def update_county_targets
    target_usages.find_each do |target|
      target.consumption = target.future.total_consumption * (1 - reduction)
      target.save!
    end
  end
  
  def total_future_usage
    future_usages.to_a.sum(&:total_consumption)
  end
  
  def total_goal_usage
    target_usages.to_a.sum(&:consumption)
  end
  
  def total_expected_usage
    target_usages.to_a.sum do |target|
      UsageCalculator.new(target).total
    end
  end
  
end
