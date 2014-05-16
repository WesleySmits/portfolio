class ProjectsController < ApplicationController
  include ProjectsHelper
  
  def index
    @projects = Project.all
  end

  def show
    find_project
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save

    redirect_to project_path(@project)
  end

  def edit
    find_project
  end

  def update
    find_project
    @project.update(project_params)

    redirect_to project_path(@project)
  end

  def destroy
    find_project
    @project.destroy

    redirect_to projects_path
  end
end
