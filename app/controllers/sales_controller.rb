class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]
  # GET /sales
  # GET /sales.json
  def index
    @pagy, @sales = pagy(Sale.all.order("created_at DESC"), items: 80)
    @scategories = Scategory.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
    impressionist(@sale)
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @sales = pagy(tag.sales.order("created_at DESC"), items: 80)
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)
    @sale.user = current_user
    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to "/bridge/delete_old_deal", notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      params.require(:sale).permit(:s_title, :s_link, :user_id, :s_source, :s_hashtag, :s_video, :s_description,
                                   :s_is_price, :s_was_price, :s_pct, :s_image, :s_rocket, :s_spare_01, :s_spare_02, :s_spare_03)
    end
end

