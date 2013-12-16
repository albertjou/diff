class AddLatitudeAndLongitudeAndAddressToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :latitude, :float
    add_column :tasks, :longitude, :float
    add_column :tasks, :address, :text
  end
end
