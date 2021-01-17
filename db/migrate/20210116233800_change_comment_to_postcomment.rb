class ChangeCommentToPostcomment < ActiveRecord::Migration[5.2]
  def change
    rename_table :comments, :postcomments
  end
end
