class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.integer :user_id
      t.string :case_no
      t.string :serial_no
      t.string :company
      t.string :model_no
      t.string :mac_id
      t.date :stolen_date
      t.string :stolen_place
      t.string :remarks
      t.string :cr_no
      t.string :image

      t.timestamps
    end
  end
end
