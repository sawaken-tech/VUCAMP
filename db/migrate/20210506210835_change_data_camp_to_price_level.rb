class ChangeDataCampToPriceLevel < ActiveRecord::Migration[5.2]
  def change

    change_column :camps, :price, :string
    change_column :camps, :level, :string

  end
end
