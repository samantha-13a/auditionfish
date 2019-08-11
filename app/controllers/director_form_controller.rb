class DirectorFormController < ApplicationController
  def index
    @director_forms = DirectorForm.all 
  end

  def show
  end

  def new
    @director_form = DirectorForm.new 
  end

  def edit
    @director_form = DirectorForm.find(params[:id])
  end
end
