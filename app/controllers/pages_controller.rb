class PagesController < ApplicationController
  def home
    if params[:q]=="inverse"
      @inverse = true
    end
    @user = current_user
    @task = current_user.tasks.build if user_signed_in?
    #@tasks = @user.tasks
  end
end
