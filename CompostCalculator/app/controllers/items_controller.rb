class ItemsController < ApplicationController
    def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(permit_item)
    if @item.save
      redirect_to item_path(@item)
    else
      flash[:error] = @item.errors.full_messages
      redirect_to new_item_path
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def view
    @item = Item.find(params[:id])
  end


  private 
    def permit_item
      params.require(:item).permit(:name, :wetWeight, :dryWeight)
    end
end