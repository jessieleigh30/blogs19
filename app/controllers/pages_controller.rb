class PagesController < ApplicationController

  def index
    @pages = Page.all
    # render :index
  end

  def show
    @page = Page.find(params[:id])
    #this is for an individual page so we would need id
  end

  def new
    @page = Page.new
  end
end
