class AddTemplateToNoteTemplate < ActiveRecord::Migration
  def change
    add_column :note_templates, :template, :text
  end
end
