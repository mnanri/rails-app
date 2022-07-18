class PagesController < ApplicationController
  def home
    if params[:q]=="inverse"
      @inverse = true
    end
    @user = current_user
    @task = @user.tasks.build if user_signed_in?
    @tasks = @user.tasks if user_signed_in?
  end
end
