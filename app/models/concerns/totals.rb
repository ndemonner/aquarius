module Totals
  include ActiveSupport::Concerns
  
  def total_consumption
    industrial_total_use +
    agriculture_total_use +
    energy_total_use +
    domestic_total_use
  end
  
  def agriculture_total_use
    crop_total_use + aquaculture_total_use
  end
  
  def energy_total_use
    total_thermoelectric_total_use
  end
end
