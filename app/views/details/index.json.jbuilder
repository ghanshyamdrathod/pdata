json.array!(@details) do |detail|
  json.extract! detail, :id, :name, :address, :avatar, :police_station, :crn, :sections, :crime_details, :last_arrest, :record_type
  json.url detail_url(detail, format: :json)
end
