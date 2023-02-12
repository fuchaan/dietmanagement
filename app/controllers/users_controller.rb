class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @menus = Menu.where(user_id:params[:id]).order(created_at: 'DESC')
  end
end
