# == Schema Information
#
# Table name: players
#
#  id                     :bigint           not null, primary key
#  armor                  :integer
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  damage                 :integer
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  health                 :integer
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  player_loses           :integer          default(0)
#  player_name            :string
#  player_rank            :integer          default(0)
#  player_wins            :integer          default(0)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  wallet                 :integer          default(0)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_players_on_confirmation_token    (confirmation_token) UNIQUE
#  index_players_on_email                 (email) UNIQUE
#  index_players_on_reset_password_token  (reset_password_token) UNIQUE
#  index_players_on_unlock_token          (unlock_token) UNIQUE
#
class Player < ApplicationRecord
 
 
 
 
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        

  has_one(

          :personal_pages,
      
          class_name: 'PersonalPage',
      
          foreign_key: 'player_id',
      
          inverse_of: :player,
      
          dependent: :destroy
      
        )
  has_one(

          :inventories,
      
          class_name: 'Inventory',
      
          foreign_key: 'player_id',
      
          inverse_of: :player,
      
          dependent: :destroy
      
        )

  has_many(
          :friends,

          class_name: 'Friend',

          foreign_key: 'player_id',

          inverse_of: :player,
          
          dependent: :destroy
  )



end
