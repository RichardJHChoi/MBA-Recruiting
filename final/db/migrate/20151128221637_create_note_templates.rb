class CreateNoteTemplates < ActiveRecord::Migration
  def change
    create_table :note_templates do |t|
      t.integer :interaction_type
      t.integer :school_affinity
      t.integer :min_score
      t.integer :max_score

      t.timestamps

    end
  end
end
