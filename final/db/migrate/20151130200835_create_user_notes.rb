class CreateUserNotes < ActiveRecord::Migration
  def change
    create_table :user_notes do |t|
      t.integer :user_id
      t.integer :interaction_id
      t.integer :note_template_id

      t.timestamps

    end
  end
end
