class PipeStoreOutputsController < ApplicationController
  before_action :set_pipe_store_output, only: %i[ show edit update destroy ]

  # GET /pipe_store_outputs or /pipe_store_outputs.json
  def index
    @pipe_store_outputs = PipeStoreOutput.all.order("created_at DESC")
  end

  # GET /pipe_store_outputs/1 or /pipe_store_outputs/1.json
  def show
  end

  # GET /pipe_store_outputs/new
  def new
    @pipe_store_output = PipeStoreOutput.new
  end

  # GET /pipe_store_outputs/1/edit
  def edit
  end

  # POST /pipe_store_outputs or /pipe_store_outputs.json
  def create
    @pipe_store_output = PipeStoreOutput.new(pipe_store_output_params)

    respond_to do |format|
      if @pipe_store_output.save
        format.html { redirect_to @pipe_store_output, notice: "Pipe store output was successfully created." }
        format.json { render :show, status: :created, location: @pipe_store_output }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pipe_store_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pipe_store_outputs/1 or /pipe_store_outputs/1.json
  def update
    respond_to do |format|
      if @pipe_store_output.update(pipe_store_output_params)
        format.html { redirect_to @pipe_store_output, notice: "Pipe store output was successfully updated." }
        format.json { render :show, status: :ok, location: @pipe_store_output }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pipe_store_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pipe_store_outputs/1 or /pipe_store_outputs/1.json
  def destroy
    @pipe_store_output.destroy
    respond_to do |format|
      format.html { redirect_to pipe_store_outputs_url, notice: "Pipe store output was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pipe_store_output
      @pipe_store_output = PipeStoreOutput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pipe_store_output_params
      params.require(:pipe_store_output).permit(:pipe_type_id, :amount, :order_item_id, :user_id)
    end
end
