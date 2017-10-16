class LinksController < ApplicationController
  
  before_action :set_link, only: [:show, :edit, :update, :destroy] 
  
  before_action do |controller|
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def index
    @links = Link.all
  end

  def show
  end

  def new
    @link = Link.new
  end

  def edit
  end

  def create 
    @link = Link.new(link_params)
    if @link.save
      flash[:success] = "Created new link!"
      redirect_to controller: 'links', action: 'index'
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'new'
    end
  end

  def update
    if @link.update_attributes(link_params)
      flash[:success] = "Link modified!"
      redirect_to  controller: 'links', action: 'index' 
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'edit'
    end
  end

  def destroy
    @link.delete
    flash[:success] = "Link successfully deleted"
    redirect_to controller: 'links', action: 'index'
  end


  private
  
  def set_link
    @link = Link.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:name, :fa_icon_name, :link, :color, :size, :footer_visible)
  end

end
