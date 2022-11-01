class AddHealthToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :health, :integer
  end
end
