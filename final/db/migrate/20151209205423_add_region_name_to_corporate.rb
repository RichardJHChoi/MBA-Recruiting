class AddRegionNameToCorporate < ActiveRecord::Migration
  def change
    add_column :corporates, :region_name, :string
  end
end
