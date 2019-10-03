class ArtistsController < ApplicationController
#genres = artists

def index
    @artist = Artist.all
end

def new
    @artist = Artist.new
end

def create
    @artist = Artist.new(artists_params)
    if @artist.save
        redirect_to concerts_path
    else
        render :new 
    end
end

def show
    @artist = Artist.find(params[:id])
end

private

def artist_params
    params.require(:artist).permit(:name, :genre)
end