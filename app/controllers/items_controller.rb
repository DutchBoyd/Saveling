class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.build
  end


  def create 
    @item = Item.create(new_item_params)
  end


  private

  def new_item_params
    params.require(:item).permit(:name, :description, :price, images_attributes: [ :image ])    
  end 
end