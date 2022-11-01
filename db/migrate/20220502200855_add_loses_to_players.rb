class AddLosesToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :player_loses, :integer, :default => 0
  end
end
