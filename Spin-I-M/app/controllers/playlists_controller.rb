class PlaylistsController < ApplicationController

  def index

  end

  def show
    @playlist = Playlist.find(params[:id])
  end
end
