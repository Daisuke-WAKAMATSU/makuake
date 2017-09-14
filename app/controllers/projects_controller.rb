class ProjectsController < ApplicationController

  def index
    @projects = Project.order(created_at: :DESC).includes(:planner).limit(9)
    @new_projects = Project.order(created_at: :DESC).includes(:planner).limit(8)
  end

  def list
    @project = Project.all
  end

  def show
    @project = Project.includes(:investments).find(params[:id])
    @project_show = (Array(@project.introductions).push(Array(@project.introduction_bodies)).push(Array(@project.introduction_images))).flatten!
    @project_show.sort! do |a, b|
      a[:intro_index] <=> b[:intro_index]
    end
  end

  def new
    @project = Project.new
    @project.investments.build
    @project.introductions.build
    @project.introduction_bodies.build
    @project.introduction_images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path, notice: "企画が投稿されました。"
    else
      flash.now[:alert] = "未入力項目があります。"
      # render :new
      redirect_to new_planner_project_path, alert: "未入力項目があります。"
    end
  end

  private
  def project_params
    params.require(:project).permit(:main_title, :goal_price, :end_date, :main_image, genre_list:[], investments_attributes: [:title, :body, :price, :image, :stock, :delivery_date], introductions_attributes: [:intro_index, :title], introduction_bodies_attributes: [:intro_index, :body], introduction_images_attributes: [:intro_index, :image]).merge(planner_id: current_planner.id)
  end
end


