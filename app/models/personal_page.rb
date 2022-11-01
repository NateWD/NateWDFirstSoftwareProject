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
class PersonalPage < ApplicationRecord
  belongs_to(

        :player,
    
        class_name: 'Player',
    
        foreign_key: 'player_id',
    
        inverse_of: :personal_pages
    
      )
      has_one_attached :house_image
      has_many_attached :images
end
