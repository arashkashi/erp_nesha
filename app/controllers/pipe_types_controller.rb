class PipeTypesController < ApplicationController
  before_action :set_pipe_type, only: %i[ show edit update destroy ]

  # GET /pipe_types or /pipe_types.json
  def index
    @pipe_types = PipeType.all
  end

  # GET /pipe_types/1 or /pipe_types/1.json
  def show
  end

  # GET /pipe_types/new
  def new
    @pipe_type = PipeType.new
  end

  # GET /pipe_types/1/edit
  def edit
  end

  # POST /pipe_types or /pipe_types.json
  def create
    @pipe_type = PipeType.new(pipe_type_params)

    respond_to do |format|
      if @pipe_type.save
        format.html { redirect_to @pipe_type, notice: "Pipe type was successfully created." }
        format.json { render :show, status: :created, location: @pipe_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pipe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pipe_types/1 or /pipe_types/1.json
  def update
    respond_to do |format|
      if @pipe_type.update(pipe_type_params)
        format.html { redirect_to @pipe_type, notice: "Pipe type was successfully updated." }
        format.json { render :show, status: :ok, location: @pipe_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pipe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pipe_types/1 or /pipe_types/1.json
  def destroy
    @pipe_type.destroy
    respond_to do |format|
      format.html { redirect_to pipe_types_url, notice: "Pipe type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pipe_type
      @pipe_type = PipeType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pipe_type_params
      params.require(:pipe_type).permit(:user_id, :name, :weight, :size)
    end
end
