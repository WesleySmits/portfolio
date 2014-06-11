class ProjectsController < ApplicationController

  before_filter :find_project, only: [:show, :edit, :update, :destroy]
  #after_action :build_assets, only: [:new, :edit]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    @project.assets.build
  end

  def create
    @project = Project.new(project_params)
    @project.save

    redirect_to project_path(@project)
  end

  def edit
    @project.assets.build
  end

  def update
    @project.update(project_params)

    redirect_to project_path(@project)
  end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

  protected

    def project_params
      params.require(:project).permit(:name, :description, :url, assets_attributes: [:_destroy, :id, :image])
    end

    def find_project
      @project = Project.find(params[:id])
    end
end
