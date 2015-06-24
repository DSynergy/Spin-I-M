class Song < ActiveRecord::Base
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  attr_reader :playlist

  def increase_popularity
    self.popularity += 1
  end

  def decrease_popularity
    if self.popularity > 0
      self.popularity -= 1
    else
      self.popularity = 0
    end
  end

end
