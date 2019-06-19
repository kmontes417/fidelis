class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops
  has_many :cards
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :async_qr

  private

  def async_qr
    CreateQr.perform_later(self.id)
  end
end
