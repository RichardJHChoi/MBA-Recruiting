class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.integer :rec_id
      t.integer :int_type
      t.integer :int_score

      t.timestamps

    end
  end
end
