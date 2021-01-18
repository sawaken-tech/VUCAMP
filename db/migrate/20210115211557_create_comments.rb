class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

      t.timestamps
      t.references  :user
      t.references  :camp
      t.string      :comment,  null: false
    end
  end
end
