class AddUserCommentToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :user_comment, :text
  end
end
