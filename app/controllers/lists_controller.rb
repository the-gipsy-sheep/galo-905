class ListsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def show

  end

  def create
    @list = List.new(list_params)
    @list.user = @user
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
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
