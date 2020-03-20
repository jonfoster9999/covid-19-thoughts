class CommentsController < ApplicationController
  def index

  end

  def create
    thought = Thought.find(params[:thought_id])
    comment = thought.comments.build(comments_params)

    if thought.save
      @comments = thought.comments.reload
      render json: { comments: @comments }
    else

    end
  end


  private

  def comments_params
    params.require(:comment).permit(:name, :email, :body)
  end
end
