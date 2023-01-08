class BrandsController < ApplicationController
  before_action :set_brand, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @brands = Brand.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @brand = Brand.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to product_url(@brand), notice: "Brand was successfully created." }
        format.json { render :show, status: :created, location: @brand }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to product_url(@brand), notice: "brand was successfully updated." }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @brand.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Brand was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_params
      params.require(:brand).permit(:name, :description, :brand_id, :available)
    end
end
# 
# create_table "brands", force: :cascade do |t|
  # t.string "name"
  # t.boolean "available"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
# end
# 
# create_table "labels", force: :cascade do |t|
  # t.string "title"
  # t.text "description"
  # t.boolean "available"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
# end
# 