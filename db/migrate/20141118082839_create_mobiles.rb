class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.integer :user_id
      t.string :case_no
      t.string :imei
      t.date :stolen_date
      t.string :stolen_place
      t.date :last_sim_used
      t.string :remarks
      t.string :cr_no
      t.string :image
      t.string :company

      t.timestamps
    end
  end
end
