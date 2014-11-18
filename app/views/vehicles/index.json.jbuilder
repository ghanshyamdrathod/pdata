json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :user_id, :case_no, :mv_no, :engine_no, :chasis_no, :company, :stolen_date, :stolen_place, :remarks, :cr_no, :image
  json.url vehicle_url(vehicle, format: :json)
end
