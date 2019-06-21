namespace :tr do
  desc "TODO"
  task trr: :environment do
    puts "hello"
    lucia = User.create!(first_name: "Lucia",
      last_name: "Ferrara", photo: "https://randomuser.me/api/portraits/women/43.jpg", email: "aa@lewagon.com", password: "123456", qr: "")
    p lucia.reload
  end

end
