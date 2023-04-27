class Artist < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :paintings, dependent: :destroy
  has_many :galleries, through: :paintings
end
