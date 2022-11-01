class AddWinsToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :player_wins, :integer, :default => 0
  end
end
