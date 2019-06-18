class AddMaxStarsToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :max_stars, :integer, default: 10
  end
end
