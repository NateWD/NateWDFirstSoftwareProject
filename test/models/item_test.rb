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
require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
