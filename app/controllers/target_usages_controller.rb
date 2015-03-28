class TargetUsagesController < ApplicationController
  def update
    @target_usage = TargetUsage.find(params[:id])
    @target_usage.industrial_reduction  = params[:target_usage][:industrial_reduction]
    @target_usage.domestic_reduction    = params[:target_usage][:domestic_reduction]
    @target_usage.energy_reduction      = params[:target_usage][:energy_reduction]
    @target_usage.agriculture_reduction = params[:target_usage][:agriculture_reduction]
    @target_usage.save!
    @state_target = @target_usage.state_target
    render json: @state_target.reload
  end
end