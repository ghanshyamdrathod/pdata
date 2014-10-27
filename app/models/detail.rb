class Detail < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader



  validates :name, :address, :avatar, :record_type, :police_station, :sections, :crime_details, :last_arrest, presence: true
  validates :crn, presence: {message: '^Friendly field name is blank'}
end
