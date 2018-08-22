class MiningTypesController < ApplicationController
  before_action :set_mining_type, only: [:show, :edit, :update, :destroy]

  # GET /mining_types
  # GET /mining_types.json
  def index
    @mining_types = MiningType.all
  end

  # GET /mining_types/1
  # GET /mining_types/1.json
  def show
  end

  # GET /mining_types/new
  def new
    @mining_type = MiningType.new
  end

  # GET /mining_types/1/edit
  def edit
  end

  # POST /mining_types
  # POST /mining_types.json
  def create
    @mining_type = MiningType.new(mining_type_params)

    respond_to do |format|
      if @mining_type.save
        format.html { redirect_to @mining_type, notice: 'Mining type was successfully created.' }
        format.json { render :show, status: :created, location: @mining_type }
      else
        format.html { render :new }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mining_types/1
  # PATCH/PUT /mining_types/1.json
  def update
    respond_to do |format|
      if @mining_type.update(mining_type_params)
        format.html { redirect_to @mining_type, notice: 'Mining type was successfully updated.' }
        format.json { render :show, status: :ok, location: @mining_type }
      else
        format.html { render :edit }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mining_types/1
  # DELETE /mining_types/1.json
  def destroy
    @mining_type.destroy
    respond_to do |format|
      format.html { redirect_to mining_types_url, notice: 'Mining type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mining_type
      @mining_type = MiningType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mining_type_params
      params.require(:mining_type).permit(:description, :acronym)
    end
end
