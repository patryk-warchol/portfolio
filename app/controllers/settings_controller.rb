class SettingsController < ApplicationController

  before_action :set_setting, only: [:show, :edit, :update, :destroy] 
  
  before_action :verify_access

  def index
    @settings = Setting.all
  end

  def show
  end

  def new
    @setting = Setting.new
  end

  def edit
  end

  def create 
    @setting = Setting.new(setting_params)
    if @setting.save
      flash[:success] = "Created new setting!"
      redirect_to controller: 'settings', action: 'index'
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'new'
    end
  end

  def update
    if @setting.update_attributes(setting_params)
      flash[:success] = "Setting modified!"
      redirect_to  controller: 'settings', action: 'index' 
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'edit'
    end
  end

  def destroy
    @setting.delete
    flash[:success] = "Setting successfully deleted"
    redirect_to controller: 'settings', action: 'index'
  end


  private
  
  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:name, :value)
  end

  def verify_access
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end
  
end
