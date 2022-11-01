class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.integer :damage
      t.integer :armor
      t.integer :health

      t.timestamps
    end
  end
end
