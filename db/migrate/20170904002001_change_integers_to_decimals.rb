class ChangeIntegersToDecimals < ActiveRecord::Migration[5.1]
  change_table :co2_estimates do |t|
    t.change :monthly_emittance, :decimal, precision: 12, scale: 2
    t.change :nat_gas, :decimal, precision: 12, scale: 2
    t.change :fuel_oil, :decimal, precision: 12, scale: 2
    t.change :electricity, :decimal, precision: 12, scale: 2
    t.change :lamb, :decimal, precision: 12, scale: 2
    t.change :beef, :decimal, precision: 12, scale: 2
    t.change :cheese, :decimal, precision: 12, scale: 2
    t.change :pork, :decimal, precision: 12, scale: 2
    t.change :turkey, :decimal, precision: 12, scale: 2
    t.change :chicken, :decimal, precision: 12, scale: 2
    t.change :tuna, :decimal, precision: 12, scale: 2
    t.change :eggs, :decimal, precision: 12, scale: 2
    t.change :potatoes, :decimal, precision: 12, scale: 2
    t.change :rice, :decimal, precision: 12, scale: 2
    t.change :nuts, :decimal, precision: 12, scale: 2
    t.change :beans, :decimal, precision: 12, scale: 2
    t.change :vegetables, :decimal, precision: 12, scale: 2
    t.change :milk, :decimal, precision: 12, scale: 2
    t.change :fruit, :decimal, precision: 12, scale: 2
    t.change :lentils, :decimal, precision: 12, scale: 2
  end
end
