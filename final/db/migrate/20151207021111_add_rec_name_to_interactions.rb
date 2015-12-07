class AddRecNameToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :rec_name, :string
  end
end
