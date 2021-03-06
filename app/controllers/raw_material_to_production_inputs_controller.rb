class RawMaterialToProductionInputsController < ApplicationController
  before_action :set_raw_material_to_production_input, only: %i[ show edit update destroy ]

  # GET /raw_material_to_production_inputs or /raw_material_to_production_inputs.json
  def index
    @raw_material_to_production_inputs = RawMaterialToProductionInput.all.order("created_at DESC")
  end

  # GET /raw_material_to_production_inputs/1 or /raw_material_to_production_inputs/1.json
  def show
  end

  # GET /raw_material_to_production_inputs/new
  def new
    @raw_material_to_production_input = RawMaterialToProductionInput.new
  end

  # GET /raw_material_to_production_inputs/1/edit
  def edit
  end

  # POST /raw_material_to_production_inputs or /raw_material_to_production_inputs.json
  def create
    @raw_material_to_production_input = RawMaterialToProductionInput.new(raw_material_to_production_input_params)

    respond_to do |format|
      if @raw_material_to_production_input.save
        format.html { redirect_to @raw_material_to_production_input, notice: "Raw material to production input was successfully created." }
        format.json { render :show, status: :created, location: @raw_material_to_production_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raw_material_to_production_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_to_production_inputs/1 or /raw_material_to_production_inputs/1.json
  def update
    respond_to do |format|
      if @raw_material_to_production_input.update(raw_material_to_production_input_params)
        format.html { redirect_to @raw_material_to_production_input, notice: "Raw material to production input was successfully updated." }
        format.json { render :show, status: :ok, location: @raw_material_to_production_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raw_material_to_production_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_to_production_inputs/1 or /raw_material_to_production_inputs/1.json
  def destroy
    @raw_material_to_production_input.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_to_production_inputs_url, notice: "Raw material to production input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_to_production_input
      @raw_material_to_production_input = RawMaterialToProductionInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raw_material_to_production_input_params
      params.require(:raw_material_to_production_input).permit(:raw_material_type_id, :amount, :user_id, :production_raw_store_id)
    end
end
