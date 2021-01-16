class CreateNearStores < ActiveRecord::Migration[5.2]
  def change
    create_table :near_stores do |t|

      t.timestamps
      t.references  :camp
      t.string      :storeName,  null: false
      t.string      :address,    null: false, unique: true
      t.time        :workHour
    end
  end
end
