class ExperiencesController < ApplicationController
    #experiences = review

    before_action :find_experience, only: [:show, :edit, :update, :destroy]
    before_action :update_experience, only: [:edit]

    def index
        @experiences = Experience.all
    end

    def show
    end

    def new
        @experience = Experience.new
    end

    def edit
    end

    def create
        @experience = Experience.create(experience_params)
        @experience.user_id = current_user.id
        if @experience.save
            redirect_to @experience
        else
            render :new
        end
    end

    def update
        if @experience.update(experience_params)
          redirect_to @experience
        else
          render :edit
        end
    end

    def destroy
        @experience.destroy
        flash[:danger] "Experience Deleted"
        redirect_to user_path(current_user.id)
    end

    private

    def experience_params
        params.require(:experience).permit(:comment, :rating, :user_id, :concert_id)
    end

    def find_review
        @review = Review.find(params[:id])
    end
  
    def update_experience
        unless logged_in? && current_user[:id] == @experience.user_id
            flash[:danger] = "You cannot edit this concert experience"
            redirect_to user_path
        end
    end


end