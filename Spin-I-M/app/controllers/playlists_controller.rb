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
    @songs = Song.sort_by_popularity(@playlist.id)
    first_song_url = @playlist.first_song
    @playlist.next_song

    respond_with do |format|
      format.html {}
      format.json { render json: first_song_url }
    end
  end
end
