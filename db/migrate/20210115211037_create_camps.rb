class CreateCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|

      t.timestamps
      t.string      :campName,  null: false, unique: true, index: true
      t.string      :address,   null: false, unique: true
      t.string      :capacity
      t.references  :image
      t.integer     :price
      t.integer     :level
      t.time        :workHour
      t.references  :nearStore
      t.references  :rate
      t.references  :postcomment
    end
  end
end
