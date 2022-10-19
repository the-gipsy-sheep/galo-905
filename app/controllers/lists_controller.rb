class ListsController < ApplicationController
  before_action :set_user, only: %i[new create edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]

  def index
    #@lists = List.all
    @list = List.new
    @list = policy_scope(List)
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
    authorize @list
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @list
  end

  def update
    authorize @list
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @list
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
