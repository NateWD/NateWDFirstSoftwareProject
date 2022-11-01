class AddDamageToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :damage, :integer
  end
end
