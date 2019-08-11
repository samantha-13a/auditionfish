class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
  end

  def new
    @director = Director.new 
  end

  def edit
  end
end
