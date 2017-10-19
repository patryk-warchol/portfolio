class TechnologiesController < ApplicationController
  
  before_action :set_technology, only: [:show, :edit, :update, :destroy] 
  
  before_action :verify_access, only: [:index, :new, :edit, :create, :update, :destroy]

  def index
    @technologies = Technology.all
  end

  def show
  end

  def new
    @technology = Technology.new
  end

  def edit
  end

  def create 
    @technology = Technology.new(technology_params)
    if @technology.save
      flash[:success] = "Created new technology!"
      redirect_to controller: 'technologies', action: 'index'
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'new'
    end
  end

  def update
    if @technology.update_attributes(technology_params)
      flash[:success] = "Technology modified!"
      redirect_to  controller: 'technologies', action: 'index' 
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'edit'
    end
  end

  def destroy
    @technology.delete
    flash[:success] = "Technology successfully deleted"
    redirect_to controller: 'technologies', action: 'index'
  end


  private
  
  def set_technology
    @technology = Technology.find(params[:id])
  end

  def technology_params
    params.require(:technology).permit(:name, :logo, :xp_pro, :xp_perso, :tech_category_id)
  end

  def verify_access
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
