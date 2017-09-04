class Co2Estimate < ApplicationRecord
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

  def self.average_rating
    self.average(:monthly_emittance).round(1)
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
    return Math.sqrt(preSQRT).round(2)
  end
end

# // FIND COHORTS STANDARD DEVIATION
# Cohort.prototype.standardDeviation = function() {
#   var sum = 0;
#   var avg = this.averageCarbon();
#   this.emissions.forEach(function(student){
#     sum += (Math.abs(student - avg) ** 2);
#   });
#
#   beforeSQRT = sum / (this.emissions.length -1);
#   stDev = Math.sqrt(beforeSQRT);
#   return stDev;
# }
#
#
# function Statistics(){
#   this.cohorts = [];
# }
#
#
#
# // T-TEST FOR INTRO VS JAVASCRIPT
# Statistics.prototype.runTTest2 = function() {
#   var tTest = 0;
#   var introAvg = this.cohorts[0].averageCarbon();
#   var introSD = this.cohorts[0].standardDeviation();
#   var introSDsq = introSD * introSD;
#   var introN = this.cohorts[0].emissions.length;
#   var jSAvg = this.cohorts[2].averageCarbon();
#   var jSSD = this.cohorts[2].standardDeviation();
#   var jSSDsq = jSSD * jSSD;
#   var jSN = this.cohorts[2].emissions.length;
#
#   tTest = Math.abs(introAvg - jSAvg) / (Math.sqrt((introSDsq + jSSDsq)/jSN));
#
#   return tTest;
# }
#
#
#
# // P-VALUE FOR INTRO VS JAVASCRIPT
# Statistics.prototype.pValue2 = function(){
#   let pValue = 0;
#   var dF = (this.cohorts[0].emissions.length - 1) + (this.cohorts[2].emissions.length -1);
#   var tValue = this.runTTest1();
#   console.log(dF);
#
#   return dF;
# }
#
#
#
# // COHORT CONSTRUCTOR WITH EMISSION DATA
# function Cohort(){
#   this.emissions = [];
#   this.empty = [];
# }
#
# // FIND COHORTS TOTAL CO2
# Cohort.prototype.totalCarbon = function() {
#   totalCarbon = 0;
#   this.emissions.forEach(function(student){
#     totalCarbon += student;
#   });
#   return totalCarbon;
# }
#
# // FIND COHORTS AVERAGE CO2
# Cohort.prototype.averageCarbon = function() {
#   var average = this.totalCarbon() / this.emissions.length
#   return average;
# }
#
# // FIND COHORTS STANDARD DEVIATION
# Cohort.prototype.standardDeviation = function() {
#   var sum = 0;
#   var avg = this.averageCarbon();
#   this.emissions.forEach(function(student){
#     sum += (Math.abs(student - avg) ** 2);
#   });
#
#   beforeSQRT = sum / (this.emissions.length -1);
#   stDev = Math.sqrt(beforeSQRT);
#   return stDev;
# }
