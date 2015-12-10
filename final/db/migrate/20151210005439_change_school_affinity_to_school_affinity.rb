class ChangeSchoolAffinityToSchoolAffinity < ActiveRecord::Migration
  def change
    change_column :interactions, :school_affinity, :boolean
  end
end
