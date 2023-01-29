class MenusController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_menu, only: [:edit, :show]
  def index
    @menus = Menu.all.order(created_at: 'DESC')
  end

  def new
    @menu = Menu.new 
  end

  def create
    Menu.create(menu_params)
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
  end

  def update
    menu = Menu.find(params[:id])
    menu.update(menu_params)
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :image, :calorie).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
