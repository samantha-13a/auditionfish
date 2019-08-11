class DirectorsController < ApplicationController
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
  end

  def create
    @director = Director.new
    @director.title = params[:director][:title]
    @director.body = params[:director][:body]

    if @director.save
      flash[:notice] = "Audition notice was saved!"
      redirect_to @director
    else
      flash.now[:alert] = "There was an error saving this audition notice. Please try again."
      render :new
    end
  end
  
end
