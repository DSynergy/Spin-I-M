class SongsController < ApplicationController
  def increase
    song = Song.find_by(id: params[:id])
    song.increase_popularity
    song.save
    redirect_to :back
  end

  def decrease 
    song = Song.find_by(id: params[:id])
    song.decrease_popularity
    song.save
    redirect_to :back
  end
end
