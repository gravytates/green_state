class BoolToStringDb < ActiveRecord::Migration[5.1]
  change_table :co2_estimates do |t|
    t.change :alum_re, :string
    t.change :plastic_re, :string
    t.change :glass_re, :string
    t.change :paper_re, :string
  end
end
