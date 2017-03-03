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
      flash[:success] = "Successs"
      redirect_to composter_path(@composter)
    else
      /flash[:error] = @composter.errors.full_messages/
      redirect_to new_composter_path
    end
  end

  def edit
    @composter = Composter.find(params[:id])
  end

  def view
    @composter = Composter.find(params[:id])
  end

  private 
    def permit_composter
      params.require(:composter).permit(:name, :size)
    end
end
