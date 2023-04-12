class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def home
    @projects = Project.all
    @blogs = Blog.all
  end

  def index
    if params[:query].present?
      @projects = Project.search_all_projects(params[:query])
    else
      @projects = Project.all
    end
  end

  def show
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    skills = params[:project][:skills].split(",")
    @project = Project.new(project_params.merge(skills: skills))
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    skills = params[:project][:skills].split(",")
    if @project.update(project_params.merge(skills: skills))
      redirect_to project_path(@project)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, status: :see_other
  end

  private

  def project_params
    params.require(:project).permit(:name, :caption, :content, :url, :github, :blog, , :cover_image, images: [], skills: [])
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
