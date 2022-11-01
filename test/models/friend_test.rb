# == Schema Information
#
# Table name: friends
#
#  id                    :bigint           not null, primary key
#  email                 :string
#  identification_number :integer
#  player_name           :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  player_id             :bigint
#
# Indexes
#
#  index_friends_on_player_id  (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (player_id => players.id)
#
require "test_helper"

class FriendTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "email must be present" do
    friend_one = friends(:one)
    friend_one.email = ''
    assert_not friend_one.valid?
  end

  test "identification must be present" do
    friend_one = friends(:one)
    friend_one.identification_number = 2
    assert_not friend_one.valid?
  end
end
