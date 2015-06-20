class SongsController < ApplicationController
  respond_to :json, :html

  def increase
    song = Song.find_by(id: params[:id])
    song.increase_popularity
    song.save
    respond_with song, json: song
  end

  def decrease 
    song = Song.find_by(id: params[:id])
    song.decrease_popularity
    song.save
    respond_with song, json: song
  end
end
