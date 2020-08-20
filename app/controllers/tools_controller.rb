class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
    @category = ["Home Improvement", "Gardening", "Automotive", "Cleaning"]
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user

    if @tool.save
      redirect_to tools_path(@user)
    else
      render :new
    end
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def edit
    tool = Tool.find(params[:id])

    if current_user.id == tool.user_id
      @tool = tool
    else
      redirect_to tools_path(current_user)
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to dashboard_path
  end

  def update
    @tool = Tool.find
    @user = User.find(params[:user_id])

    if @tool.update(tool_params)
      redirect_to tools_user_path(@user)
    else
      render :edit
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :category, :location, :description, :user_id, :photo)
  end
end
