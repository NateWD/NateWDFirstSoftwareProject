class AddPlayerNameToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :player_name, :string
  end
end
