class Co2EstimatesController  < ApplicationController

  # after_action :only => [:create, :edit] { self.update(:monthly_emittance =>
  #   self.exam_math) }


  def index
    @co2_estimates = Co2Estimate.all
  end

  def new
    @co2_estimate = Co2Estimate.new
  end

  def create

    @user = current_user
    @co2_estimate = @user.co2_estimates.new(co2_estimate_params)

    if @co2_estimate.save
    monthly_emittance = @co2_estimate.exam_math co2_estimate_params
    @co2_estimate.update(:monthly_emittance => monthly_emittance)
    flash[:notice] = ("Estimate successfully added! Estimated carbon emission per month: " + @co2_estimate.monthly_emittance.to_s)
      redirect_to  co2_estimates_path
    else
      render :new
    end
  end

private
  def co2_estimate_params
    params.require(:co2_estimate).permit(
      :nat_gas,
      :fuel_oil,
      :electricity,
      :mode,
      :miles,
      :alum_re,
      :glass_re,
      :paper_re,
      :lamb,
      :beef,
      :cheese,
      :pork,
      :turkey,
      :chicken,
      :tuna,
      :eggs,
      :potatoes,
      :rice,
      :nuts,
      :beans,
      :vegetables,
      :milk,
      :fruit,
      :lentils,
      :plastic_re,

    )
  end
end
