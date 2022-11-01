# == Schema Information
#
# Table name: personal_pages
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  player_id  :bigint
#
# Indexes
#
#  index_personal_pages_on_player_id  (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (player_id => players.id)
#
require "test_helper"

class PersonalPageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
