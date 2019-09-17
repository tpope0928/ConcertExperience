class ArtistsController < ApplicationController
#genres = artists

    def index
        if params[:user_id]
            @artists = User.find(params[:user_id]).artists
            flash.now[:danger] = "You haven't added any concerts with this artist!" if @artists.empty?
        end
    end

    def show
        @artist = Artist.find(params[:id])
    end
end

