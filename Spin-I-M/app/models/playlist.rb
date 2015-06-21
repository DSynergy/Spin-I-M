class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  has_many :users, through: :user_playlists

  attr_reader :queue

  def create_queue
    if @queue.nil?
      @queue = []
      self.songs.each do |song|
        queue << song.url
      end
    end
    queue
  end

  def first_song
    create_queue
    queue.first
  end

  def next_song
    queue.shift 
  end

  def shuffle_playlist
    queue.shuffle
  end

  def song_on_deck
    queue.second
  end

end
