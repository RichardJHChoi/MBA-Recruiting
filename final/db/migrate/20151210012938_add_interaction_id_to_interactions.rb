class AddInteractionIdToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :interaction_id, :integer
  end
end
