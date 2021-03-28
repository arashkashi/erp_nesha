class ProductionRawStoresController < ApplicationController
  before_action :set_production_raw_store, only: %i[ show edit update destroy ]

  # GET /production_raw_stores or /production_raw_stores.json
  def index
    @production_raw_stores = ProductionRawStore.all
  end

  # GET /production_raw_stores/1 or /production_raw_stores/1.json
  def show
  end

  # GET /production_raw_stores/new
  def new
    @production_raw_store = ProductionRawStore.new
  end

  # GET /production_raw_stores/1/edit
  def edit
  end

  # POST /production_raw_stores or /production_raw_stores.json
  def create
    @production_raw_store = ProductionRawStore.new(production_raw_store_params)

    respond_to do |format|
      if @production_raw_store.save
        format.html { redirect_to @production_raw_store, notice: "Production raw store was successfully created." }
        format.json { render :show, status: :created, location: @production_raw_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @production_raw_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_raw_stores/1 or /production_raw_stores/1.json
  def update
    respond_to do |format|
      if @production_raw_store.update(production_raw_store_params)
        format.html { redirect_to @production_raw_store, notice: "Production raw store was successfully updated." }
        format.json { render :show, status: :ok, location: @production_raw_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @production_raw_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_raw_stores/1 or /production_raw_stores/1.json
  def destroy
    @production_raw_store.destroy
    respond_to do |format|
      format.html { redirect_to production_raw_stores_url, notice: "Production raw store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_raw_store
      @production_raw_store = ProductionRawStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def production_raw_store_params
      params.require(:production_raw_store).permit(:name, :user_id)
    end
end
