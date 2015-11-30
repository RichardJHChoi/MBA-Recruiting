class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|
      t.string :corp_name
      t.integer :corp_ind
      t.integer :corp_reg

      t.timestamps

    end
  end
end
