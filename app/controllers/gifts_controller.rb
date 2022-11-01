class GiftsController < ApplicationController
  before_action :set_list, only: %i[new create]
  before_action :set_gift, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:order].in? %w[price title created_at]
      @gifts = @gifts.order("gifts.#{params[:order]} #{params[:desc] ? 'DESC' : ''}")
    else
      @gifts = policy_scope(Gift)
    end
    @gifts = policy_scope(Gift)
  end

  def new
    @gift = Gift.new
    authorize @gift
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to list_path(@gift.list_id)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @gift
  end

  def show
    @comment = Comment.new
    authorize @gift
  end

  def edit
    authorize @gift
  end

  def update
    if @gift.update(gift_params)
      redirect_to gift_path(@gift)
    else
      render :edit, status: :unprocessable_entity
    end
    authorize @gift
  end

  def destroy
    @gift.destroy
    redirect_to list_path(@gift.list_id), status: :see_other
    authorize @gift
  end

  private

  def set_gift
    @gift = Gift.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def gift_params
    params.require(:gift).permit(:url, :title, :gift_picture, :price, :ranking, :description, :status, :photo, :list_id)
  end
end
