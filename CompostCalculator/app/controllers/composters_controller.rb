class CompostersController < ApplicationController

  def new
    @composter = Composter.new
  end

  def index
    @composters = Composter.all
  end

  def show
    @composter = Composter.find(params[:id])
  end

  def create
    @composter = Composter.new(permit_composter)
    if @composter.save
      redirect_to composter_path(@composter)
    else
      flash[:error] = @composter.errors.full_messages
      redirect_to new_composter_path
    end
  end

  def edit
    @composter = Composter.find(params[:id])
  end

  def view
    @composter = Composter.find(params[:id])
  end

  def destroy
    @composter = Composter.find(params[:id])
    @composter.destroy
    redirect_to root_path
  end 

  def update
     @composter = Composter.update(permit_composter_moisture)
      redirect_to composter_path(@composter)
  end

  private 
    def permit_composter
      params.require(:composter).permit(:name, :size)
    end

    def permit_composter_moisture
      params.require(:composter).permit(:wetWeight, :dryWeight)
    end
end