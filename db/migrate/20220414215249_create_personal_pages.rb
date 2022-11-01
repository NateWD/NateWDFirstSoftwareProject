class CreatePersonalPages < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_pages do |t|

      t.timestamps
    end
  end
end
