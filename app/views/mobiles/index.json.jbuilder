json.array!(@mobiles) do |mobile|
  json.extract! mobile, :id, :user_id, :case_no, :imei, :stolen_date, :stolen_place, :last_sim_used, :remarks, :cr_no, :image, :company
  json.url mobile_url(mobile, format: :json)
end
