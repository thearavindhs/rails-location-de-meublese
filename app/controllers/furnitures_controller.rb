class FurnituresController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @furnitures = Furniture.all
    @user = current_user
  end

  def show
    if Furniture.exists?(params[:id])
      @furniture = Furniture.find(params[:id])
    else
      redirect_to furnitures_url
    end
  end

  def new
    @furniture = Furniture.new
    @user = current_user
  end

  def create
    @furniture = Furniture.new(furniture_params)
    @furniture.user = current_user
    if @furniture.save!
      redirect_to furniture_path(@furniture)
    else
      render 'new'
    end
  end

  private

  def furniture_params
    params.require(:furniture).permit(:name, :price, :photo)
  end

end
