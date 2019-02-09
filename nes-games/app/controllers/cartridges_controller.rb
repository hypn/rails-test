class CartridgesController < ApplicationController
  before_action :set_cartridge, only: [:show, :edit, :update, :destroy]

  # GET /cartridges
  # GET /cartridges.json
  def index
    @cartridges = Cartridge.all
  end

  # GET /cartridges/1
  # GET /cartridges/1.json
  def show
  end

  # GET /cartridges/new
  def new
    @cartridge = Cartridge.new
  end

  # GET /cartridges/1/edit
  def edit
  end

  # POST /cartridges
  # POST /cartridges.json
  def create
    @cartridge = Cartridge.new(cartridge_params)

    respond_to do |format|
      if @cartridge.save
        format.html { redirect_to @cartridge, notice: 'Cartridge was successfully created.' }
        format.json { render :show, status: :created, location: @cartridge }
      else
        format.html { render :new }
        format.json { render json: @cartridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartridges/1
  # PATCH/PUT /cartridges/1.json
  def update
    respond_to do |format|
      if @cartridge.update(cartridge_params)
        format.html { redirect_to @cartridge, notice: 'Cartridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartridge }
      else
        format.html { render :edit }
        format.json { render json: @cartridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartridges/1
  # DELETE /cartridges/1.json
  def destroy
    @cartridge.destroy
    respond_to do |format|
      format.html { redirect_to cartridges_url, notice: 'Cartridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartridge
      @cartridge = Cartridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartridge_params
      params.require(:cartridge).permit(:title, :colour, :publisher_id)
    end
end
