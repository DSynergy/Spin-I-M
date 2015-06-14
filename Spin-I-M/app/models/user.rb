class User < ActiveRecord::Base
  has_many :playlists, through: :user_playlists
end
