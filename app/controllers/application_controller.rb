class ApplicationController < ActionController::Base
  def redirect_to_thoughts
    redirect_to thoughts_path
  end
end
