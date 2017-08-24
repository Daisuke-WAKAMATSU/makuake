class ProjectsController < ApplicationController
  def index
    @projects = Project.limit(9)
  #   @projects = Project.includes(:planner).limit(9)
  end

  def show
    @project = Project.includes(:investments).find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:main_title, :goal_price, :end_date, :main_image, :main_body, :introduction, :intro_body, :intro_image, :desc_title, :desc_body, :desc_image, :content_title, :content_body, :content_image, :feature_title, :feature_body, :feature_image).merge(planner_id: current_planner.id)
  end
end

