class CreateLatitudeAndLongitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :latitude_and_longitudes do |t|

      t.timestamps
    end
  end
end
