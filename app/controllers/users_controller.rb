class UsersController < ApplicationController

  def index
    # @lists = List.all
    @users = User.all
    # @lists = policy_scope(List)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
    @lists = List.all
  end
end
