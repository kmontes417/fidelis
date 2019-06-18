class AddQrToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :qr, :string
  end
end
