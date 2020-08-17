  class ToolsController < ApplicationController
    def index
      @tool = Tool.new
      @tools = Tool.all
    end
    def new
      @tool = Tool.new
    end
    def create
      @tool = Tool.new(tool_params)
      @user = User.find(params[:user_id])
      @tool.user = @user
      if @tool.save
        redirect_to_tools_user_path(@user)
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
        redirect_to_tools_user_path(current_user)
    end
    def destroy
      @tool = Tool.find(params[:id])
      @tool.destroy
      redirect_to_tools_user_path
    end
    def update
      @tool = Tool.find
      @user = User.find(params[:user_id])
      if @tool.update(tool_params)
        redirect_to_tools_user_path(@user)
      else
        render :edit
      end
    end
  end
  private
  def tool_params
    params.require(:tool).permit(:name, :category, :location, :description, :user_id, :photo)
end
