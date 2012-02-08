class PagesController < ApplicationController
    
  def index
    @total = Page.count_by_sql("SELECT COUNT(*) FROM pages")
    @pages = Page.find(:all)
  end
  
  def new
    @page = Page.new
    
    if request.post?
      @page.title = params[:title]
      @page.author = params[:author]
      @page.email = params[:email]
      @page.body = params[:body]
      @page.reference = params[:reference]
      @page.save
      redirect_to :action => 'index'
    end
  end
    
  def edit
    @page = Page.find(params[:id])
    
    if request.post?
      @page.title = params[:title]
      @page.author = params[:author]
      @page.email = params[:email]
      @page.body = params[:body]
      @page.reference = params[:reference]
      @page.save
      redirect_to :action => 'index'
    end
  end
    
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to :action => 'index'
  end
end
