class AddIdentificationToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :identification_number, :integer
  end
end
