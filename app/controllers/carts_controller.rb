class CartsController < ApplicationController

def create
  @song = Song.find(params[:song_id])
  flash[:notice] = "#{@song.title} has been added!"
end
end
