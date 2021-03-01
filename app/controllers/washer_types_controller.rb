class WasherTypesController < ApplicationController
  before_action :set_washer_type, only: %i[ show edit update destroy ]

  # GET /washer_types or /washer_types.json
  def index
    @washer_types = WasherType.all
  end

  # GET /washer_types/1 or /washer_types/1.json
  def show
  end

  # GET /washer_types/new
  def new
    @washer_type = WasherType.new
  end

  # GET /washer_types/1/edit
  def edit
  end

  # POST /washer_types or /washer_types.json
  def create
    @washer_type = WasherType.new(washer_type_params)

    respond_to do |format|
      if @washer_type.save
        format.html { redirect_to @washer_type, notice: "Washer type was successfully created." }
        format.json { render :show, status: :created, location: @washer_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @washer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washer_types/1 or /washer_types/1.json
  def update
    respond_to do |format|
      if @washer_type.update(washer_type_params)
        format.html { redirect_to @washer_type, notice: "Washer type was successfully updated." }
        format.json { render :show, status: :ok, location: @washer_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @washer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washer_types/1 or /washer_types/1.json
  def destroy
    @washer_type.destroy
    respond_to do |format|
      format.html { redirect_to washer_types_url, notice: "Washer type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washer_type
      @washer_type = WasherType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def washer_type_params
      params.require(:washer_type).permit(:name, :user_id)
    end
end
