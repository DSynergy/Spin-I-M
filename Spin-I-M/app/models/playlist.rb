class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  has_many :users, through: :user_playlists

  def self.search_playlists(query)
    where("name LIKE ?", "%#{query}%")
  end

  def shuffle_playlist
    @queue.shuffle
  end

end
