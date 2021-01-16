class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|

      t.timestamps
      t.references  :camp
      t.string      :image,  null: false
      t.string      :imageName
    end
  end
end
