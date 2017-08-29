class ProjectsController < ApplicationController

  def index
    @projects = Project.order(created_at: :DESC).includes(:planner).limit(9)
    @new_projects = Project.order(created_at: :DESC).includes(:planner).limit(8)
  end

  def show
    @project = Project.includes(:investments).find(params[:id])
  end

  def new
    @project = Project.new
    @project.investments.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path, notice: "企画が投稿されました。"
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:main_title, :goal_price, :end_date, :main_image, :introduction, :intro_body, :intro_image, :desc_title, :desc_body, :desc_image, :content_title, :content_body, :content_image, :feature_title, :feature_body, :feature_image, investments_attributes: [:title, :body, :price, :image, :stock, :delivery_date]).merge(planner_id: current_planner.id)
  end

end
