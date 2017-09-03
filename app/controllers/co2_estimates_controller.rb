class Co2EstimatesController  < ApplicationController
  def index
    @co2_estimates = Co2Estimate.all
  end

  def new
    @co2_estimate = Co2Estimate.new
  end

private
  def co2_estimate_params
    params.require(:co2_estimate).permit(:nat_gas)
  end
end
