json.array!(@laptops) do |laptop|
  json.extract! laptop, :id, :user_id, :case_no, :serial_no, :company, :model_no, :mac_id, :stolen_date, :stolen_place, :remarks, :cr_no, :image
  json.url laptop_url(laptop, format: :json)
end
