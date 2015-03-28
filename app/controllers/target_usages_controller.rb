class TargetUsagesController < ApplicationController
  def update
    @target_usage = TargetUsage.find(params[:id])
    @target_usage.update! safe_params
    @state_target = @target_usage.state_target
    render json: @state_target.reload
  end

  private

  def safe_params
    params.require(:target_usage).permit :industrial_reduction,
        :domestic_reduction, :energy_reduction, :agriculture_reduction
  end
end
