class ListsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @lists = List.all
    @list = List.new
    @lists = policy_scope(List)
    @gift = Gift.all
  end

  def new
    @list = List.new
    authorize @list
  end

  def show
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = @user
    if @list.save
      redirect_to lists_path
    else
      @lists = policy_scope(List)
      render :index, status: :unprocessable_entity
    end
    authorize @list
  end

  def edit
    authorize @list
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @list
  end

  def destroy
    @list.destroy
    redirect_to lists_path
    authorize @list
  end

  private

  def list_params
    params.require(:list).permit(:title, :description, :privacy)
  end

  def set_list
    @list = List.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
