class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :latitude, :float
    add_column :models, :longitude, :float
    add_column :models, :address, :string
  end
end
