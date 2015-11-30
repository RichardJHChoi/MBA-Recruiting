class CreateInteractionTypes < ActiveRecord::Migration
  def change
    create_table :interaction_types do |t|
      t.string :int_type

      t.timestamps

    end
  end
end
