class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @projects = Project.all
  end

  def show
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :caption, :content, :skills, :url, :github, :blog, :image)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
