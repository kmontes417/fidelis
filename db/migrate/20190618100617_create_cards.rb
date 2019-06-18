class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :star_count
      t.string :status
      t.references :shop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
