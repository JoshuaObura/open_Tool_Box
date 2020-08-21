class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      sql = "tools.name ILIKE :query OR tools.description ILIKE :query" 
      @tools = Tool.where(sql, query: "%#{params[:query]}%")
    else
      @tools = Tool.all
    end
    @tools = Tool.geocoded
    @markers = @tools.map do |tool|
      {
        lat: tool.latitude,
        lng: tool.longitude
      }
    end
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
    @booking = Booking.new
    @markers = [{
      lat: @tool.latitude,
      lng: @tool.longitude,
      }]
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to dashboard_path
  end

  def update
    @tool = Tool.find(params[:id])

    if @tool.update(tool_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :category, :address, :description, :user_id, :photo)
  end
end
