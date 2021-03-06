class CreateQr < ApplicationJob
  queue_as :default

  def perform(user_id)
    puts "Creating QR code"
    user = User.find(user_id)
    user.qr = RQRCode::QRCode.new("#{domain}/qr/#{user.token}").as_svg(offset: 0, color: '000',
                    shape_rendering: 'crispEdges',
                    module_size: 6)
    user.save!
    puts "QR created with with URL: #{domain}/qr/#{user.token}"
  end

  def domain
    return 'www.fidelis.site' if Rails.env == "production"
    'localhost:3000'
  end
end
