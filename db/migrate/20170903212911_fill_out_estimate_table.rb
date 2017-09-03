class FillOutEstimateTable < ActiveRecord::Migration[5.1]
  def change
    add_column :co2_estimates, :nat_gas, :integer
    add_column :co2_estimates, :fuel_oil, :integer
    add_column :co2_estimates, :electricity, :integer
    add_column :co2_estimates, :mode, :string
    add_column :co2_estimates, :miles, :integer
    add_column :co2_estimates, :alum_re, :boolean
    add_column :co2_estimates, :plactic_re, :boolean
    add_column :co2_estimates, :glass_re, :boolean
    add_column :co2_estimates, :paper_re, :boolean
    add_column :co2_estimates, :lamb, :integer
    add_column :co2_estimates, :beef, :integer
    add_column :co2_estimates, :cheese, :integer
    add_column :co2_estimates, :pork, :integer
    add_column :co2_estimates, :turkey, :integer
    add_column :co2_estimates, :chicken, :integer
    add_column :co2_estimates, :tuna, :integer
    add_column :co2_estimates, :eggs, :integer
    add_column :co2_estimates, :potatoes, :integer
    add_column :co2_estimates, :rice, :integer
    add_column :co2_estimates, :nuts, :integer
    add_column :co2_estimates, :beans, :integer
    add_column :co2_estimates, :vegetables, :integer
    add_column :co2_estimates, :milk, :integer
    add_column :co2_estimates, :fruit, :integer
    add_column :co2_estimates, :lentils, :integer


  end
end
