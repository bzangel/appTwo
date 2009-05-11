class ClassifiedController < ApplicationController
  layout 'template'
    
  def index 
    @classifieds = Classified.find(:all) 
  end 
  
  def show 
    @classified = Classified.find(params[:id]) 
  end 
  
  def new 
    @classified = Classified.new 
  end 
  
  def create 
    @classified = Classified.new(params[:classified]) 
    if @classified.save 
      redirect_to :action => 'list' 
    else 
      render :action => 'new' 
    end 
  end 
  
  def edit 
    @classified = Classified.find(params[:id])
  end 
  
  def update 
    @classified = Classified.find(params[:id])
   if @classified.update_attributes(params[:classified])
      redirect_to :action => 'show', :id => @classified
    else
      render :action => 'edit'
    end
  end 
  
  def delete
    Classified.find(params[:id]).destroy
    redirect_to :action => 'list'
  end 
  
end
