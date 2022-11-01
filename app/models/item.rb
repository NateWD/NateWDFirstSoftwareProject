# == Schema Information
#
# Table name: items
#
#  id           :bigint           not null, primary key
#  armor        :integer
#  damage       :integer
#  equipped     :boolean
#  health       :integer
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  inventory_id :bigint
#
# Indexes
#
#  index_items_on_inventory_id  (inventory_id)
#
# Foreign Keys
#
#  fk_rails_...  (inventory_id => inventories.id)
#
class Item < ApplicationRecord
    belongs_to(

        :inventory,
    
        class_name: 'Inventory',
    
        foreign_key: 'inventory_id',
    
        inverse_of: :items
    
      )
      has_one_attached :icon_image
end
