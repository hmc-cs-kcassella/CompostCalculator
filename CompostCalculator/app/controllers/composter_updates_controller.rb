class ComposterUpdatesController < ApplicationController

  def new
    @composterUpdate = ComposterUpdate.new
  end

  def index
    @composterUpdate = ComposterUpdate.all
  end

  def show
    @composterUpdate = ComposterUpdate.find(params[:id])
  end

  def create
    @composterUpdate = ComposterUpdate.new(permit_update)
    if @composterUpdate.save
      redirect_to composter_update_path(@composterUpdate)
    else
      flash[:error] = @composterUpdate.errors.full_messages
      redirect_to new_composter_update_path
    end
  end

  def edit
    @composterUpdate = ComposterUpdate.find(params[:id])
  end

  def view
    @composterUpdate = ComposterUpdate.find(params[:id])
  end


  private 
    def permit_update
      params.require(:composterUpdate).permit(:composter_id)
    end
end