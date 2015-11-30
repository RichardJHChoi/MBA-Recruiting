class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.string :rec_name
      t.integer :rec_corp
      t.integer :rec_school
      t.string :rec_email
      t.string :rec_mobile
      t.string :rec_phone

      t.timestamps

    end
  end
end
