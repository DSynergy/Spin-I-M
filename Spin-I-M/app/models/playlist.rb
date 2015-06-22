class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  has_many :users, through: :user_playlists

  attr_reader :queue

  def create_queue
    @queue = []
    self.songs.each do |song|
      queue << song.url
    end
    queue
  end

  def currently_playing
    create_queue
    current_song = queue.first
    queue.shift
    current_song
  end

  def shuffle_playlist
    queue.shuffle
  end

  def self.search_playlists(query)
    where("name LIKE ?", "%#{query}%")
  end

  def song_on_deck
    queue.second
  end

end
