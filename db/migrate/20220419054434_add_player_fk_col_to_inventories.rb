class AddPlayerFkColToInventories < ActiveRecord::Migration[6.1]
  def change
    add_reference :inventories, :player, foreign_key: true
  end
end
