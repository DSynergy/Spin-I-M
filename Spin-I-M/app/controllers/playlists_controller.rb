class PlaylistsController < ApplicationController
  respond_to :json, :html

  def index
    if params[:search] && params[:search] != ""
      @playlists = Playlist.search_playlists(params[:search])
    else
      @playlists = Playlist.all
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
    if session[:queue] == []
      session[:queue] = nil
    end
    session[:queue] ||= @playlist.songs.order(popularity: :desc).map(&:url)
    @queue = session[:queue]
    @songs = @queue.map {|url| Song.find_by(url: url)}
  end

  def queue
    @queue
  end

end
