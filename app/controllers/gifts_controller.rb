class GiftsController < ApplicationController
  before_action :set_list, only: %i[new create]
  before_action :set_gift, only: %i[show edit update destroy]

  def index
    @gifts = Gift.all
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(list_params)
    @gift.list = @list
    @gift.save
    redirect_to list_path(@list)
  end

  def show
  end

  def edit
  end

  def update
    @gift.update(gift_params)
    redirect_to gift_path(@gift)
  end

  def destroy
    @gift.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_gift
    @gift = Gift.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def list_params
    params.require(:gift).permit(:url, :title, :gift_picture, :price, :ranking, :description, :status, :photo)
  end

  def gift_params
    params.require(:gift).permit(:url, :title, :gift_picture, :price, :ranking, :description, :status, :photo)
  end
end
