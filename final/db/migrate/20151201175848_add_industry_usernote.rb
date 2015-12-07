class AddIndustryUsernote < ActiveRecord::Migration
  def change
  	add_column :note_templates, :industry_id, :integer
  end
end
