class PipeStoreInputsController < ApplicationController
  before_action :set_pipe_store_input, only: %i[ show edit update destroy ]

  # GET /pipe_store_inputs or /pipe_store_inputs.json
  def index
    @pipe_store_inputs = PipeStoreInput.all
  end

  # GET /pipe_store_inputs/1 or /pipe_store_inputs/1.json
  def show
  end

  # GET /pipe_store_inputs/new
  def new
    @pipe_store_input = PipeStoreInput.new
  end

  # GET /pipe_store_inputs/1/edit
  def edit
  end

  # POST /pipe_store_inputs or /pipe_store_inputs.json
  def create
    @pipe_store_input = PipeStoreInput.new(pipe_store_input_params)

    respond_to do |format|
      if @pipe_store_input.save
        format.html { redirect_to @pipe_store_input, notice: "Pipe store input was successfully created." }
        format.json { render :show, status: :created, location: @pipe_store_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pipe_store_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pipe_store_inputs/1 or /pipe_store_inputs/1.json
  def update
    respond_to do |format|
      if @pipe_store_input.update(pipe_store_input_params)
        format.html { redirect_to @pipe_store_input, notice: "Pipe store input was successfully updated." }
        format.json { render :show, status: :ok, location: @pipe_store_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pipe_store_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pipe_store_inputs/1 or /pipe_store_inputs/1.json
  def destroy
    @pipe_store_input.destroy
    respond_to do |format|
      format.html { redirect_to pipe_store_inputs_url, notice: "Pipe store input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pipe_store_input
      @pipe_store_input = PipeStoreInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pipe_store_input_params
      params.require(:pipe_store_input).permit(:pipe_type_id, :amount, :user_id)
    end
end
