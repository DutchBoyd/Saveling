class HomeController < ApplicationController
  def index
    @items = Item.joins(:images).all

  end
end
