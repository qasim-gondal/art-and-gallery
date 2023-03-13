class Painting < ApplicationRecord
  mount_uploader :image,ImageUploader
  belongs_to :artist
  belongs_to :gallery
end
