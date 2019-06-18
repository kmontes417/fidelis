class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shops
  has_many :cards
  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :create_qr

  private

  def create_qr
    self.qr = RQRCode::QRCode.new("http://github.com/#{self.id}")
  end
end
