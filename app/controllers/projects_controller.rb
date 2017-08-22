class ProjectsController < ApplicationController
  def index
  end

  def show
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

