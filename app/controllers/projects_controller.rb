class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])

  end

  def new
    @project = Project.new

  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user #tied project to specific user

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :goal, :deadline, rewards_attributes: [:name, :description,])
  end
end
