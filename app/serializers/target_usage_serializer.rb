class TargetUsageSerializer < ActiveModel::Serializer
  attributes :id, :county_id, :county_name, :future_usage, :goal_usage, :expected_usage
  
  attributes :industrial_reduction, :agriculture_reduction, :energy_reduction, :domestic_reduction
  
  attributes :industrial_usage, :agriculture_usage, :energy_usage, :domestic_usage
  
  attributes :balance
  
  def county_name
    object.county.name
  end
  
  def future_usage
    object.future.total_consumption
  end
  
  def goal_usage
    object.consumption
  end
  
  def expected_usage
    calculator.total
  end
  
  def industrial_usage
    calculator.industrial
  end
  
  def agriculture_usage
    calculator.agriculture
  end
  
  def energy_usage
    calculator.energy
  end
  
  def domestic_usage
    calculator.domestic
  end
  
  def balance
    goal_usage - expected_usage
  end
  
  def calculator
    @calculator ||= UsageCalculator.new(object)
  end
end