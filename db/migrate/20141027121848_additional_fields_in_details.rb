class AdditionalFieldsInDetails < ActiveRecord::Migration
  def change
    add_column :details, :reference_no, :string
    add_column :details, :history, :string
    add_column :details, :remarks, :string
    add_column :details, :remarks2, :string
    add_column :details, :latest_activity, :string
  end
end
