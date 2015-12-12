class AddInteractionTypeToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :interaction_type, :string
  end
end
