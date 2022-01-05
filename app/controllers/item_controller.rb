class ItemController < ApplicationController

  layout "application"

  #Show all items
  def index
    @items = Item.all

    render "index"
  end

  # Show one of items
  def show
    @item = Item.find(params[:id])

    render "item/show"
  end

  #Save new item
  def create

    item = Item.new name: params[:name], price: params[:price], description: params[:description]

    save = item.save

    if save
      redirect_to action: 'index'
    else
      redirect_back_or_to action: 'new'
    end

  end

  # Render html form for creat new item
  def new
    render "item/new"
  end

end
