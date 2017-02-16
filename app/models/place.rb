class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  paginates_per 10

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true
end
