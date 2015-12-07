class AddSchoolAffinityToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :school_affinity, :integer
  end
end
