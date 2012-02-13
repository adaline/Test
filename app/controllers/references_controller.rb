class ReferencesController < ApplicationController
    
  def index
    # Paginate, showing 5 itesm per reference
    @references = Reference.order(:name).page(params[:page]).per(5)
  end
  
  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(params[:reference])
    if @reference.save
      redirect_to references_url, :notice => 'Reference saved'
    else
      render :new
    end
  end
    
  def edit
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update_attributes(params[:reference])
      redirect_to references_url, :notice => 'Reference updated'
    else
      render :edit
    end
  end
    
  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    redirect_to references_url, :notice => 'Reference deleted'
  end
end
