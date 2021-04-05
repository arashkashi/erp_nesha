class WasherInputsController < ApplicationController
  before_action :set_washer_input, only: %i[ show edit update destroy ]

  # GET /washer_inputs or /washer_inputs.json
  def index
    @washer_inputs = WasherInput.all.order("created_at DESC")
  end

  # GET /washer_inputs/1 or /washer_inputs/1.json
  def show
  end

  # GET /washer_inputs/new
  def new
    @washer_input = WasherInput.new
  end

  # GET /washer_inputs/1/edit
  def edit
  end

  # POST /washer_inputs or /washer_inputs.json
  def create
    @washer_input = WasherInput.new(washer_input_params)

    respond_to do |format|
      if @washer_input.save
        format.html { redirect_to @washer_input, notice: "Washer input was successfully created." }
        format.json { render :show, status: :created, location: @washer_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @washer_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washer_inputs/1 or /washer_inputs/1.json
  def update
    respond_to do |format|
      if @washer_input.update(washer_input_params)
        format.html { redirect_to @washer_input, notice: "Washer input was successfully updated." }
        format.json { render :show, status: :ok, location: @washer_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @washer_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washer_inputs/1 or /washer_inputs/1.json
  def destroy
    @washer_input.destroy
    respond_to do |format|
      format.html { redirect_to washer_inputs_url, notice: "Washer input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washer_input
      @washer_input = WasherInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def washer_input_params
      params.require(:washer_input).permit(:washer_type_id, :amount, :user_id)
    end
end
