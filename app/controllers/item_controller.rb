class ItemController < ApplicationController

  #Show all items
  def index
    @items = Item.all

    render plain: "Must be all items"

  end

  # Show one of items
  def show
    @item = Item.find(params[:id])

    render "item/show"
  end

  def new
    render plain: "Create new"
  end

end
