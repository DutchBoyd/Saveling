class ItemsController < ApplicationController
  load_and_authorize_resource
  skip_authorize_resource :only => :new

  def index; end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.create(item_params.merge(owner: current_user))
    redirect_to user_items_path(current_user)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item.update_attributes(item_params)
    @item.save!
    redirect_to user_items_path(current_user)
  end

  def destroy
    @item.delete
    redirect_to user_items_path(current_user)
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, images_attributes: [ :image ])    
  end 
end
