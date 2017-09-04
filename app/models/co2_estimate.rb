class Co2Estimate < ApplicationRecord
  include Statsample::Test
  include Statsample::Summarizable
  include Math


  belongs_to :user

  scope :alphabetical, ->  { joins(:user).merge(User.order(name: :asc)) }
  scope :reverse_alpha, ->  { joins(:user).merge(User.order(name: :desc)) }
  scope :highest, -> { order(monthly_emittance: :desc) }
  scope :lowest, -> { order(monthly_emittance: :asc) }
  scope :newest, -> { order(created_at: :asc) }
  scope :oldest, -> { order(created_at: :desc) }

  scope :oregon, -> { joins(:user).merge(User.where(state: "Oregon")) }
  scope :washington, -> { joins(:user).merge(User.where(state: "Washington")) }


  def exam_math(params)

    if self.mode === 'walk'
      modeEfficiency = 0
    elsif self.mode === 'bicycle'
      modeEfficiency = 0
    elsif self.mode === 'MAX'
      modeEfficiency = 0.36
    elsif self.mode === 'bus'
      modeEfficiency = 0.56
    elsif self.mode === 'truck (older than 2016)'
      modeEfficiency = 1.32
    elsif self.mode === 'small pickup'
      modeEfficiency = 0.94
    elsif self.mode === 'standard pickup'
      modeEfficiency = 1.1
    elsif self.mode === 'hybrid'
      modeEfficiency = 0.39
    else self.mode === 'sedan'
      modeEfficiency = 0.84
    end

    modeTotal = (modeEfficiency * self.miles * 4.33)

    oil_electric_total = ((self.fuel_oil * 7.59) + (self.electricity * 10.55))

    if self.nat_gas <= 9.6
      nat_gas_total = 0
    else
      nat_gas_total = (self.nat_gas - 9.5) * 8.85
    end

    homeTotal = oil_electric_total + nat_gas_total

    wasteProduct = 692
    if self.alum_re == 'yes'
      wasteProduct -= 72.5
    end
    if self.plastic_re == 'yes'
      wasteProduct -= 72.5
    end
    if self.glass_re == 'yes'
      wasteProduct -= 72.5
    end
    if self.paper_re == 'yes'
      wasteProduct -= 72.5
    end
    totalWaste = wasteProduct/12.0

    foodTotal = ((self.lamb * 86.44) + (self.beef * 59.44) + (self.cheese * 29.77) + (self.pork * 26.68) + (self.turkey * 24) + (self.chicken * 15.21) + (self.tuna * 13.45) + (self.eggs * 10.58) + (self.potatoes * 6.39) + (self.rice * 5.95) + (self.nuts * 5.07) + (self.beans * 4.41) + (self.vegetables * 4.41) + (self.milk * 4.19) + (self.fruit * 2.43) + (self.lentils * 1.99))


    return (modeTotal + homeTotal + totalWaste + foodTotal)
  end

  def self.average_emittance
    self.average(:monthly_emittance).round(2)
  end

  def self.standard_dev
    results = self.pluck(:monthly_emittance)
    totalSum = results.sum
    average = totalSum/results.count
    summation = 0
    results.each do |r|
      summation += ((r - average).abs ** 2)
    end
    preSQRT = summation / (results.count - 1)
    return Math.sqrt(preSQRT).round(3)
  end

  def self.t_value
    oregon_rows = joins(:user).merge(User.where(state: "Oregon"))
    washington_rows = joins(:user).merge(User.where(state: "Washington"))
    o_n = oregon_rows.pluck(:monthly_emittance).count
    w_n = washington_rows.pluck(:monthly_emittance).count
    o_st_dev = oregon_rows.standard_dev
    w_st_dev = washington_rows.standard_dev
    o_avg = oregon_rows.average_emittance
    w_avg = washington_rows.average_emittance
    numerator = o_avg - w_avg
    preSQRT = ((o_st_dev ** 2)/o_n) + ((w_st_dev ** 2)/w_n)
    denominator = Math.sqrt(preSQRT)
    t_value = (numerator / denominator).round(3)

  end


  def self.deg_freedom
    oregon_data = joins(:user).merge(User.where(state: "Oregon"))
    washington_data = joins(:user).merge(User.where(state: "Washington"))
    o_n = oregon_data.pluck(:monthly_emittance).count
    w_n = washington_data.pluck(:monthly_emittance).count
    return (o_n - 1) + (w_n -1)
  end

  def self.p_value
    oregon_rows = joins(:user).merge(User.where(state: "Oregon"))
    washington_rows = joins(:user).merge(User.where(state: "Washington"))
    o_data = oregon_rows.pluck(:monthly_emittance)
    w_data = washington_rows.pluck(:monthly_emittance)
    o = Daru::Vector.new(o_data)
    w = Daru::Vector.new(w_data)
    t_2=Statsample::Test::T::TwoSamplesIndependent.new(o, w)
    if t_2.probability_equal_variance < 0.000001
      p_with_equal_variance = '< 0.000001'
    else
      p_with_equal_variance = t_2.probability_equal_variance
    end

    if t_2.probability_not_equal_variance < 0.000001
      p_with_equal_non_variance = '< 0.000001'
    else
      p_with_equal_non_variance = t_2.probability_not_equal_variance
    end
    return [p_with_equal_variance, p_with_equal_non_variance]
  end
end
