class StateTargetsController < ApplicationController
  
  def index
    @targets = StateTarget.all
    render json: @targets
  end
  
  def create
  end
  
  def show
    @state_target = StateTarget.find(params[:id])
    render json: @state_target
  end
  
  def update
  end
end