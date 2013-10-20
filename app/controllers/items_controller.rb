class ItemsController < ApplicationController
  def index; end

  def new
    @item = Item.new
    @item.images.build
  end

  def create 
    @item = Item.create(new_item_params.merge(owner: current_user))
    redirect_to user_items_path(current_user)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(new_item_params)
    @item.save!
    redirect_to user_items_path(current_user)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to user_items_path(current_user)
  end

  private

  def new_item_params
    params.require(:item).permit(:name, :description, :price, images_attributes: [ :image ])    
  end 
end
