class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.text :description
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
