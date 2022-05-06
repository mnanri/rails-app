class PagesController < ApplicationController
  def home
    if params[:q]=="inverse"
      @inverse = true
    end
    @user = current_user
    @tasks = @user.tasks
  end
end
