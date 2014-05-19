class ItemsController < ApplicationController

  def new
    @item = Item.new
    @tags = Tag.all
  end

  def create
    
  end

  def destroys

  end

  
  


end
