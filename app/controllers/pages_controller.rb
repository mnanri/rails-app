class PagesController < ApplicationController
  def home
    if params[:q]=="inverse"
      @inverse = true
    end
  end
end
