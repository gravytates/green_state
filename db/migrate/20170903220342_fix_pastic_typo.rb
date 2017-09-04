class FixPasticTypo < ActiveRecord::Migration[5.1]
  def change
    remove_column :co2_estimates, :plactic_re, :boolean
    add_column :co2_estimates, :plastic_re, :boolean
  end
end
