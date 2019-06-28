class Promotion < ApplicationRecord
  belongs_to :shop
  validates :description, presence: true
  validates :name, presence: true
end
