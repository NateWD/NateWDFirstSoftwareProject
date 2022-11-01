class AddPlayerFkColToFriends < ActiveRecord::Migration[6.1]
  def change
    add_reference :friends, :player, foreign_key: true
  end
end
