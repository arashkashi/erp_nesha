class RawMaterialTypesController < ApplicationController
  before_action :set_raw_material_type, only: %i[ show edit update destroy ]

  # GET /raw_material_types or /raw_material_types.json
  def index
    @raw_material_types = RawMaterialType.all
  end

  # GET /raw_material_types/1 or /raw_material_types/1.json
  def show
  end

  # GET /raw_material_types/new
  def new
    @raw_material_type = RawMaterialType.new
  end

  # GET /raw_material_types/1/edit
  def edit
  end

  # POST /raw_material_types or /raw_material_types.json
  def create
    @raw_material_type = RawMaterialType.new(raw_material_type_params)

    respond_to do |format|
      if @raw_material_type.save
        format.html { redirect_to @raw_material_type, notice: "Raw material type was successfully created." }
        format.json { render :show, status: :created, location: @raw_material_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raw_material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_types/1 or /raw_material_types/1.json
  def update
    respond_to do |format|
      if @raw_material_type.update(raw_material_type_params)
        format.html { redirect_to @raw_material_type, notice: "Raw material type was successfully updated." }
        format.json { render :show, status: :ok, location: @raw_material_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raw_material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_types/1 or /raw_material_types/1.json
  def destroy
    @raw_material_type.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_types_url, notice: "Raw material type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_type
      @raw_material_type = RawMaterialType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raw_material_type_params
      params.require(:raw_material_type).permit(:name, :user_id)
    end
end
