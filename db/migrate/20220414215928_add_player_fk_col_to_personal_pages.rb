class AddPlayerFkColToPersonalPages < ActiveRecord::Migration[6.1]
  def change

    add_reference :personal_pages, :player, foreign_key: true

  end


end
