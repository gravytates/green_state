class Co2Estimate < ApplicationRecord
  belongs_to :user

  scope :highest, -> { order(monthly_emittance: :desc) }
  scope :lowest, -> { order(monthly_emittance: :asc) }

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
end
