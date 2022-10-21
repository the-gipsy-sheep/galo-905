class GiftsController < ApplicationController
  before_action :set_list, only: %i[new create]
  before_action :set_gift, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @gifts = Gift.search_by_gift(params[:query])
      # sql_query = <<~SQL
      #   gifts.title @@ :query
      #   OR gifts.description @@ :query
      #   OR gifts.price @@ :query
      # SQL
      # @gifts = Gift.where(sql_query, query: "%#{params[:query]}%")
    else
      @gifts = policy_scope(Gift)
    end
  end

  def new
    @gift = Gift.new
    authorize @gift
  end

  def create
    @gift = Gift.new(gift_params)
    @gift.list = @list
    if @gift.save
      redirect_to list_path(@list)
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
    redirect_to lists_path, status: :see_other
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
    params.require(:gift).permit(:url, :title, :gift_picture, :price, :ranking, :description, :status, :photo)
  end
end
