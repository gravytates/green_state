class AddUserLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :state, :string
  end
end