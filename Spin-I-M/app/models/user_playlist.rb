class UserPlaylist < ActiveRecord::Base
  belongs_to :playlists
  belongs_to :users
end
