class UsageCalculator
  attr_accessor :target_usage
  
  SECTORS = ['industrial', 'domestic', 'agriculture', 'energy']
  
  def initialize(target_usage)
    @target_usage = target_usage
  end
  
  SECTORS.each do |sector|
    define_method sector do
      (1 - target_usage.send("#{sector}_reduction")) * target_usage.future.send("#{sector}_total_use")
    end
  end
  
  def total
    SECTORS.map{|sector| send(sector) }.sum
  end

end