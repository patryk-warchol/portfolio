class ProjectsController < ApplicationController
  
  before_action :set_project, only: [:show, :edit, :update, :destroy, :add_technology_new, :add_technology_create] 

  before_action :verify_access, only: [:index, :new, :edit, :create, :update, :destroy, :add_technology_new, :add_technology_create]

  def index
    @projects = Project.all
  end

  def show
    @project_technologies = @project.technologies
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create 
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Created new project!"
      redirect_to controller: 'projects', action: 'index'
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'new'
    end
  end

  def update
    if @project.update_attributes(project_params)
      flash[:success] = "Project modified!"
      redirect_to  controller: 'projects', action: 'index' 
    else
      flash.now[:danger] = 'You must fill all the fields'
      render 'edit'
    end
  end

  def destroy
    @project.delete
    flash[:success] = "Project successfully deleted"
    redirect_to controller: 'projects', action: 'index'
  end

  def add_technology_new
    @technologies = Technology.available(@project.id)
  end

  def add_technology_create
    Project.find(params[:id]).add_technology(Technology.find(params[:technology][:id]))
    flash[:success] = "Technology successfully added to project"
    redirect_to controller: 'projects', action: 'index'
  end

  def add_technology_delete
    Project.find(params[:id]).technologies.delete(Technology.find(params[:tech_id]))
    redirect_to controller: 'projects', action: 'index'
  end


  private
  

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :image, :my_role, :desc)
  end

  def verify_access
    if !logged_in?
      redirect_to controller: 'sessions', action: 'new'
    end
  end
  
end




