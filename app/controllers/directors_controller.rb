class DirectorsController < ApplicationController
  before_action :require_sign_in, except: :show
#  before_action :authorize_user, except: [:show, :new, :create]

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new 
  end

  def edit
    @director = Director.find(params[:id])
  end

  def create
    @director = Director.new
    @director.title = params[:director][:title]
    @director.body = params[:director][:body]
    @director.user = current_user

    if @director.save
      flash[:notice] = "Audition notice was saved!"
      redirect_to @director
    else
      flash.now[:alert] = "There was an error saving this audition notice. Please try again."
      render :new
    end
  end

  def update
    @director = Director.find(params[:id])
    @director.title = params[:director][:title]
    @director.body = params[:director][:body]
 
    if @director.save
      flash[:notice] = "Your audition notice was updated."
      redirect_to @director
    else
      flash.now[:alert] = "There was an error saving your changes. Please try again."
      render :edit
    end
  end
  
  def destroy
    @director = Director.find(params[:id])
 
    if @director.destroy
      flash[:notice] = "\"#{@director.title}\" was deleted successfully."
      redirect_to directors_path
    else
      flash.now[:alert] = "There was an error deleting this audition notice."
      render :show
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  #def authorize_user
  #  director = Director.find(params[:id])
  #  unless current_user == director.user
  #    flash[:alert] = "You are not authorized to do that."
  #    redirect_to [director]
  #  end
  #end  
end
