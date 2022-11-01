class AddArmorToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :armor, :integer
  end
end
