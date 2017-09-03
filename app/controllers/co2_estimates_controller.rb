class Co2EstimatesController  < ApplicationController
  def index
    @co2_estimates = Co2Estimate.all
  end
end
