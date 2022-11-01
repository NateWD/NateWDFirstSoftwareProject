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
class Friend < ApplicationRecord

    validates :email, :identification_number, presence: true
    belongs_to(
        :player,

        class_name: 'Player',

        foreign_key: 'player_id',

        inverse_of: :friends
    )

    
end
