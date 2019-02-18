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


  def create
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end
   
  def update
    @page = Page.find(params[:id])
  
    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end

  private

  def pages_params
    params.require(:page).permit(:title, :body, :author)
  end

end
