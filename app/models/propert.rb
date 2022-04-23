class Propert < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  belongs_to :account
  has_one_attached :photo

  scope :latest, -> { order created_at: :desc}


end
