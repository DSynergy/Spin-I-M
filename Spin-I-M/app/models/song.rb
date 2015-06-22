class Song < ActiveRecord::Base
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def self.sort_by_popularity(playlist_id)
    playlist = Playlist.find(playlist_id)
    playlist.songs.order(popularity: :desc)
  end
  
  def increase_popularity
    self.popularity += 1
  end

  def decrease_popularity
    self.popularity -= 1
  end

end
