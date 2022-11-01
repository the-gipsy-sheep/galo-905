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
    @gifts = @user.gifts
  end

  def follow
    @user = User.find(params[:id])
    current_user.followees << @user
    authorize @user
    redirect_back(fallback_location: user_path(@user))
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.followed_users.find_by(followee_id: @user.id).destroy
    authorize @user
    redirect_back(fallback_location: user_path(@user))
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render "index"
    authorize current_user
  end

  def followees
    @user = User.find(params[:id])
    @users = @user.followees
    render "index"
    authorize current_user
  end

end
