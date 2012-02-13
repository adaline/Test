class PagesController < ApplicationController
    
  def index
    # Paginate, showing 5 itesm per page
    @pages = Page.order(:title).page(params[:page]).per(5)
  end

  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to pages_url, :notice => 'Page saved'
    else
      render :new
    end
  end
    
  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to pages_url, :notice => 'Page updated'
    else
      render :edit
    end
  end
    
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url, :notice => 'Page deleted'
  end
end
