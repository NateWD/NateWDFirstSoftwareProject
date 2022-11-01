class AddRankToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :player_rank, :integer, :default => 0
  end
end
