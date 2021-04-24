class AddColumnTitle < ActiveRecord::Migration[5.2]
  def change
    add_column :camps, :checkout, :time

    rename_column :camps, :workHour, :checkin

  end 
end
