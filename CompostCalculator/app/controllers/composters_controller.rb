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

      @composter.wetWeights = "|"
      @composter.dryWeights = "|"
      @composter.wets = 0
      @composter.drys = 0
      @composter.newWet = 0
      @composter.newDry = 0
      @composter.temps = "|"
      @composter.items = " "
      @composter.newestWetWeight = " "
      @composter.newestDryWeight = " "
      @composter.newestItem = " "
      @composter.newestTemp = " "
    if @composter.save
      redirect_to root_path
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
    @composter = Composter.find(params[:id])
    @composter.update(permit_composter_update)
  end

  private 
    def permit_composter
      params.require(:composter).permit(:name)
    end

    def permit_composter_update
      params.require(:composter).permit(:newDry, :newWet, :newestItem, :items, :newestTemp, :temps, :wets, :drys)
    end

    def permit_finish_update
      params.require(:composter).permit(:wetWeights, :dryWeights)
    end
end