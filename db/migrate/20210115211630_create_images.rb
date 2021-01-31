class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|

      t.timestamps
      t.references  :camp
      t.string      :image
      t.string      :imageName
    end
  end
end
