class Song < ActiveRecord::Base
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def self.sort_by_popularity(playlist_id)
    playlist = Playlist.find(playlist_id)
    playlist.songs.order(popularity: :desc)
  end

end
