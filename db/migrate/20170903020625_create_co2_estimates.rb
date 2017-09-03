class CreateCo2Estimates < ActiveRecord::Migration[5.1]
  def change
    create_table :co2_estimates do |t|
      t.integer 'monthly_emittance'
      t.integer 'user_id'

      t.timestamps
    end

    create_table :invasive_species_removal do |t|
      t.string 'species'
      t.integer 'cubic ft'
      t.integer 'user_id'

      t.timestamps
    end

    create_table :native_species_planting do |t|
      t.string 'species'
      t.integer 'amount'
      t.integer 'user_id'

      t.timestamps
    end
  end
end
