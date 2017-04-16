class CompostersController < ApplicationController
  before_action :set_composter, only: [:show, :edit, :update, :destroy]

  # GET /composters
  # GET /composters.json
  def index
    @composters = Composter.all
  end

  # GET /composters/1
  # GET /composters/1.json
  def show
  end

  # GET /composters/new
  def new
    @composter = Composter.new
  end

  # GET /composters/1/edit
  def edit
  end

  # POST /composters
  # POST /composters.json
  def create
    @composter = Composter.new(composter_params)

    respond_to do |format|
      if @composter.save
        format.html { redirect_to @composter, notice: 'Composter was successfully created.' }
        format.json { render :show, status: :created, location: @composter }
      else
        format.html { render :new }
        format.json { render json: @composter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /composters/1
  # PATCH/PUT /composters/1.json
  def update
    respond_to do |format|
      if @composter.update(composter_params)
        format.html { redirect_to @composter, notice: 'Composter was successfully updated.' }
        format.json { render :show, status: :ok, location: @composter }
      else
        format.html { render :edit }
        format.json { render json: @composter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /composters/1
  # DELETE /composters/1.json
  def destroy
    @composter.destroy
    respond_to do |format|
      format.html { redirect_to composters_url, notice: 'Composter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composter
      @composter = Composter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def composter_params
      params.require(:composter).permit(:cid, :uid, :name, :temperature, :flipTime)
    end
end
