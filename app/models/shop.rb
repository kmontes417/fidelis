class Shop < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :promotions
  has_many :cards
  validates :name, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
