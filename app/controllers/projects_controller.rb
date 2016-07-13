class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @projects = Project.new
  end

  def create
    @projects = Project.new(project_params)
  end
end
