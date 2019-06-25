class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shop
  has_many :cards
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :add_token, :async_qr

  private

  def async_qr
    CreateQr.perform_later(self.id)
  end

  def add_token
    while true do
      new_token = HumanToken.generate
      next if User.where(token: new_token).present?

      self.update(token: new_token)
      return
    end
  end
end
