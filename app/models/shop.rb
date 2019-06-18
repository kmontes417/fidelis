class Shop < ApplicationRecord
  belongs_to :user
  has_many :promotions
  has_many :cards
end
