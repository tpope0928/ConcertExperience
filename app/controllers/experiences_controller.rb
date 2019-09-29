class ExperiencesController < ApplicationController
    #experiences = review
    before_action :redirect_if_not_logged_in
    before_action :set_experience, only: [:show, :edit, :update]
    before_action :redirect_if_not_experience_author, only: [:edit, :update]
 
   def index
     if params[:concert_id] && @concert = Concert.find_by_id(params[:concert_id])
        @experiences = @concert.experiences
     else
       @error = "That post doesn't exist" if params[:post_id]
       @experiences = Experience.all
     end
   end
 
   def new
     
     if params[:concert_id] && @concert = Concert.find_by_id(params[:concert_id])
       @experience = @concert.experience.build
     else
       @error = "That post doesn't exist" if params[:concert_id]
       @experience = Experience.new
     end
   end
 
   def create
     @experience = current_user.experience.build(experience_params)
     if @experience.save
       redirect_to experiences_path
     else
       render :new
     end
   end
 
 
   def show
   end
 
   def edit
   end
 
   def update
     if @experience.update(experience_params)
       redirect_to experience_path(@experience)
     else
       render :edit
     end
   end
 
   private
 
   def experience_params
     params.require(:experience).permit(:comment, :rating, :concert_id, :user_id)
   end
 
   def set_experience
     @experience = Experience.find_by(id: params[:id])
     if !@experience
       flash[:message] = "Experience was not found"
       redirect_to experiences_path
     end
   end
 
   def redirect_if_not_experience_author
      redirect_to experiences_path if @experience.user != current_user
   end

end