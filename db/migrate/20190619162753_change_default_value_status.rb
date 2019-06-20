class ChangeDefaultValueStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :cards, :status, :string, :default => "pending"
  end
end
