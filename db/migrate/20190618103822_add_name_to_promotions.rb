class AddNameToPromotions < ActiveRecord::Migration[5.2]
  def change
    add_column :promotions, :name, :string
  end
end
