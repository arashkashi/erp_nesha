class WasherOutputsController < ApplicationController
  before_action :set_washer_output, only: %i[ show edit update destroy ]

  # GET /washer_outputs or /washer_outputs.json
  def index
    @washer_outputs = WasherOutput.all
  end

  # GET /washer_outputs/1 or /washer_outputs/1.json
  def show
  end

  # GET /washer_outputs/new
  def new
    @washer_output = WasherOutput.new
  end

  # GET /washer_outputs/1/edit
  def edit
  end

  # POST /washer_outputs or /washer_outputs.json
  def create
    @washer_output = WasherOutput.new(washer_output_params)

    respond_to do |format|
      if @washer_output.save
        format.html { redirect_to @washer_output, notice: "Washer output was successfully created." }
        format.json { render :show, status: :created, location: @washer_output }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @washer_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washer_outputs/1 or /washer_outputs/1.json
  def update
    respond_to do |format|
      if @washer_output.update(washer_output_params)
        format.html { redirect_to @washer_output, notice: "Washer output was successfully updated." }
        format.json { render :show, status: :ok, location: @washer_output }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @washer_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washer_outputs/1 or /washer_outputs/1.json
  def destroy
    @washer_output.destroy
    respond_to do |format|
      format.html { redirect_to washer_outputs_url, notice: "Washer output was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washer_output
      @washer_output = WasherOutput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def washer_output_params
      params.require(:washer_output).permit(:washer_type_id, :amount, :order_id, :user_id)
    end
end
