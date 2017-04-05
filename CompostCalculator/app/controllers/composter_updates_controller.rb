class ComposterUpdatesController < ApplicationController

  def new
    @update = Update.new
  end

  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end

  def create
    @update = Update.new(permit_update)
    if @update.save
      redirect_to updates_show_path(@update)
    else
      flash[:error] = @update.errors.full_messages
      redirect_to new_update_path
    end
  end

  def edit
    @update = Update.find(params[:id])
  end

  def view
    @update = Update.find(params[:id])
  end


  private 
    def permit_update
      params.require(:update).permit(:wetWeight, @composter.id)
    end
end