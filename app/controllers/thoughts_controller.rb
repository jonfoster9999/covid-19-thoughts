class ThoughtsController < ApplicationController
  def index
    # @thoughts = Thought.all.order(created_at: :desc)
    @thoughts = Thought.order(created_at: :desc).paginate(page: params[:page], per_page: 3)
  end

  def create
    t = Thought.new(thoughts_params)

    if t.save
      redirect_to thoughts_path
    else
      render plain: 'bad'
    end
  end

  private

  def thoughts_params
    params.require(:thought).permit(:body, :name, :email)
  end
end
