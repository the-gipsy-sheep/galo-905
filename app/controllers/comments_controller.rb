class CommentsController < ApplicationController
  before_action :set_user, only: %i[create update destroy]
  before_action :set_comment, only: %i[update destroy]

  def create
    @gift = Gift.find(params[:gift_id])
    @comment = Comment.new(comment_params)
    @comment.gift = @gift
    @comment.user = @user
    if @comment.save
      redirect_to gift_path(@gift)
    else
      render @gift, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to gift_path(@gift)
    else
      render @gift, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    redirect_to @gift
  end

  private

  def comment_params
    params.require(@comments).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_user
    @user = current_user
  end

end
