class ConcertsController < ApplicationController
    #books = concert

    def index
        if params[:user_id]
            @concerts = User.find(params[:user_id]).concerts
            flash.now[:danger] = "You haven't added any concerts yet!" if @concerts.empty?
        end
    end

    def new
        @concert = Concert.new
        @concert.review.build
    end

    def create
        @concert = Concert.create(concert_params)
        @book.experiences.last.user = current_user
        if @concert.save
            redirect_to @concert
        end
    end

    def show
        @concert = Concert.find(params[:id])
    end

    private

    def concert_params
        params.require(:concert).permit(:city, :state, :venue, :date)
    end
    
end
