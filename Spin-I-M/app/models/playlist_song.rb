class PlaylistSong < ActiveRecord::Base
  belongs_to :songs
  belongs_to :playlists
end
