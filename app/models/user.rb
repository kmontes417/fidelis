class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops
  has_many :cards
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :create_qr

  private

  def create_qr
    self.qr = RQRCode::QRCode.new("#{domain}/qr/#{self.id}").as_svg
    self.save
  end

  def domain
    return 'www.fidelis.site' if Rails.env == "production"

    'localhost:3000'
  end
end
