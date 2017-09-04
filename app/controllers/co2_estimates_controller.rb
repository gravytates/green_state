class Co2EstimatesController  < ApplicationController

  # after_action :only => [:create, :edit] { self.update(:monthly_emittance =>
  #   self.exam_math) }


  def index

    @filter_type = params[:sort_by]
    # binding.pry
    if params[:sort_by] == nil
      @co2_estimates = Co2Estimate.lowest
    else
      @co2_estimates = Co2Estimate.send(params[:sort_by])
      if Co2Estimate.send(params[:sort_by]) == []
        flash[:alert] = "No results returned. Choose another filter!"
      end
    end

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
    flash[:notice] = ("Estimate successfully added! Estimated emissions: " + @co2_estimate.monthly_emittance.to_s + "lbs CO2 per month.")
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
