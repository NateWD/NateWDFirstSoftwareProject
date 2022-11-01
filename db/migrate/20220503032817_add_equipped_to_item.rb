class AddEquippedToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :equipped, :boolean
  end
end
