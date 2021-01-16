class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|

      t.timestamps
      t.references  :user
      t.references  :camp
      t.integer     :rate,  null: false
    end
  end
end
