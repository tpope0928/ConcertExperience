class ArtistsController < ApplicationController
#genres = artists

def index
    @artists = Artist.all
end

def new
    @artists = Artist.new
end

def create
    @artists = Artist.new(artists_params)
    if @artists.save
        redirect_to concerts_path
    else
        render :new 
    end
end

def show
    @artists = Artist.find(params[:id])
end

private

def artist_params
    params.require(:artists).permit(:name, :genre)
end