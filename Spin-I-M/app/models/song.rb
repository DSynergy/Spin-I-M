class Song < ActiveRecord::Base
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  attr_reader :playlist

  # def self.sort_by_popularity(playlist_id)
  #   find_playlist(playlist_id)
  #   playlist.songs.order(popularity: :desc)
  # end

  def increase_popularity
    self.popularity += 1
  end

  def decrease_popularity
    self.popularity -= 1
  end
  
end
