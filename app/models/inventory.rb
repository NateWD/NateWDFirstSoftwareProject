# == Schema Information
#
# Table name: inventories
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  player_id  :bigint
#
# Indexes
#
#  index_inventories_on_player_id  (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (player_id => players.id)
#
class Inventory < ApplicationRecord
  
  has_many(

    :items,

    class_name: 'Item',

    foreign_key: 'inventory_id',

    inverse_of: :inventory,

    dependent: :destroy

  )

  
  
  belongs_to(

        :player,
    
        class_name: 'Player',
    
        foreign_key: 'player_id',
    
        inverse_of: :inventories
    
      )




end
