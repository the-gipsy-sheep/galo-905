class CommentsController < ApplicationController
  before_action :set_comment, only: %i[update destroy]

  def index
    @comments = policy_scope(Comment)
  end

  def create
    @gift = Gift.find(params[:gift_id])
    @comment = Comment.new(comment_params)
    @comment.gift = @gift
    @comment.user = current_user
    if @comment.save
      redirect_to gift_path(@gift)
    else
      render @gift, status: :unprocessable_entity
    end
    authorize @comment
  end

  def update
    if @comment.update(comment_params)
      redirect_to gift_path(@gift)
    else
      render @gift, status: :unprocessable_entity
    end
    authorize @comment
  end

  def destroy
    @comment.destroy
    redirect_to gift_path(@comment)
    authorize @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
