class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :address
      t.string :avatar
      t.string :police_station
      t.string :crn
      t.string :sections
      t.string :crime_details
      t.string :last_arrest
      t.string :record_type

      t.timestamps
    end
  end
end
