class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :user_id
      t.string :case_no
      t.string :mv_no
      t.string :engine_no
      t.string :chasis_no
      t.string :company
      t.date :stolen_date
      t.string :stolen_place
      t.string :remarks
      t.string :cr_no
      t.string :image

      t.timestamps
    end
  end
end
