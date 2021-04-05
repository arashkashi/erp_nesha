class TruckScaleOutputsController < ApplicationController
  before_action :set_truck_scale_output, only: %i[ show edit update destroy ]

  # GET /truck_scale_outputs or /truck_scale_outputs.json
  def index
    @truck_scale_outputs = TruckScaleOutput.all.order("created_at DESC")
  end

  # GET /truck_scale_outputs/1 or /truck_scale_outputs/1.json
  def show
  end

  # GET /truck_scale_outputs/new
  def new
    @truck_scale_output = TruckScaleOutput.new
  end

  # GET /truck_scale_outputs/1/edit
  def edit
  end

  # POST /truck_scale_outputs or /truck_scale_outputs.json
  def create
    @truck_scale_output = TruckScaleOutput.new(truck_scale_output_params)

    respond_to do |format|
      if @truck_scale_output.save
        format.html { redirect_to @truck_scale_output, notice: "Truck scale output was successfully created." }
        format.json { render :show, status: :created, location: @truck_scale_output }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truck_scale_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_scale_outputs/1 or /truck_scale_outputs/1.json
  def update
    respond_to do |format|
      if @truck_scale_output.update(truck_scale_output_params)
        format.html { redirect_to @truck_scale_output, notice: "Truck scale output was successfully updated." }
        format.json { render :show, status: :ok, location: @truck_scale_output }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truck_scale_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_scale_outputs/1 or /truck_scale_outputs/1.json
  def destroy
    @truck_scale_output.destroy
    respond_to do |format|
      format.html { redirect_to truck_scale_outputs_url, notice: "Truck scale output was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_scale_output
      @truck_scale_output = TruckScaleOutput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_scale_output_params
      params.require(:truck_scale_output).permit(:order_id, :amount, :user_id)
    end
end
