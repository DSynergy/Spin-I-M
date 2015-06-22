class PlaylistsController < ApplicationController

  def index
    if params[:search] && params[:search] != ""
      @playlists = Playlist.search_playlists(params[:search])
    else
      @playlists = Playlist.all
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs = Song.sort_by_popularity(@playlist.id)
  end
end
