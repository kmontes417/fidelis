class RemoveCategoryFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :category, :string
  end
end
