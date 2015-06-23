class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  has_many :users, through: :user_playlists

  def self.search_playlists(query)
    where("name LIKE ?", "%#{query}%")
  end

  # def create_queue
  #   playlist = Playlist.find(playlist_id)
  #   @queue ||= playlist.songs.order(popularity: :desc).map(&:url)
  # end

  # def next_song
  #   @queue.shift
  # end


  def shuffle_playlist
    @queue.shuffle
  end

  # def song_on_deck
  #   queue.second
  # end

end
