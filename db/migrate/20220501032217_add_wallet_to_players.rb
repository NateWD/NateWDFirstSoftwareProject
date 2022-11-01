class AddWalletToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :wallet, :integer, :default => 0
  end
end
