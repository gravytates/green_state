class Co2Estimate < ApplicationRecord
  belongs_to :user

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
      wasteProduct - 72.5
    end
    if self.plastic_re == 'yes'
      wasteProduct - 72.5
    end
    if self.paper_re == 'yes'
      wasteProduct - 72.5
    end
    totalWaste = wasteProduct/12.0


    return (modeTotal + homeTotal + totalWaste)
  end
end


# 72.5
# // this works as of 10am 4/11
# Economic.prototype.recyclingTotal = function() {
#   var wasteProduct = 692;
#   this.recyclingArray.forEach(function(recyclable) {
#     wasteProduct -= recyclable;
#     console.log("recycle: " + wasteProduct);
#   });
#   return (wasteProduct / 12);
# };
#
# // this works as of 10am 4/11
# Economic.prototype.foodTotal = function() {
#   var foodProduct = 0;
#   this.foodArray.forEach(function(item) {
#     foodProduct += item;
#     console.log("food: " + typeof foodProduct);
#   });
#   return foodProduct;
# };
#
# Economic.prototype.overallTotal = function(mode, miles, electric, natGas, fuel, recyclingArray, foodArray) {
#   var bigResult = this.modeCarbonTotal(mode, miles) + this.homeCarbonTotal(electric, natGas, fuel) + this.recyclingTotal(recyclingArray) + this.foodTotal(foodArray);
#   return bigResult.toFixed(2);
# }
#
