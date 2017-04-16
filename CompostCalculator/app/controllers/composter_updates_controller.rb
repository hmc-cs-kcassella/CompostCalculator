class ComposterUpdatesController < ApplicationController
  before_action :set_composter_update, only: [:show, :edit, :update, :destroy]

  # GET /composter_updates
  # GET /composter_updates.json
  def index
    @composter_updates = ComposterUpdate.all
  end

  # GET /composter_updates/1
  # GET /composter_updates/1.json
  def show
  end

  # GET /composter_updates/new
  def new
      @composter = Article.new(post_params)
      @composter.user = current_user

              if @composter.save
                  redirect_to @composter
              else
                  render 'new'
              end
  end

  # GET /composter_updates/1/edit
  def edit
  end

  # POST /composter_updates
  # POST /composter_updates.json
  def create
    @composter_update = ComposterUpdate.new(composter_update_params)

    respond_to do |format|
      if @composter_update.save
        format.html { redirect_to @composter_update, notice: 'Composter update was successfully created.' }
        format.json { render :show, status: :created, location: @composter_update }
      else
        format.html { render :new }
        format.json { render json: @composter_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /composter_updates/1
  # PATCH/PUT /composter_updates/1.json
  def update
    respond_to do |format|
      if @composter_update.update(composter_update_params)
        format.html { redirect_to @composter_update, notice: 'Composter update was successfully updated.' }
        format.json { render :show, status: :ok, location: @composter_update }
      else
        format.html { render :edit }
        format.json { render json: @composter_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /composter_updates/1
  # DELETE /composter_updates/1.json
  def destroy
    @composter_update.destroy
    respond_to do |format|
      format.html { redirect_to composter_updates_url, notice: 'Composter update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composter_update
      @composter_update = ComposterUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def composter_update_params
      params.require(:composter_update).permit(:cuid, :cid, :wetWeight, :dryWeight, :cNRatio)
    end
end
