class ScategoriesController < ApplicationController
  before_action :set_scategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /scategories
  # GET /scategories.json
  def index
    @scategories = Scategory.all.order("created_at DESC")
  end

  # GET /scategories/1
  # GET /scategories/1.json
  def show
  end

  # GET /scategories/new
  def new
    @scategory = Scategory.new
  end

  # GET /scategories/1/edit
  def edit
  end

  # POST /scategories
  # POST /scategories.json
  def create
    @scategory = Scategory.new(scategory_params)
    @scategory.user = current_user
    respond_to do |format|
      if @scategory.save
        format.html { redirect_to @scategory, notice: 'Scategory was successfully created.' }
        format.json { render :show, status: :created, location: @scategory }
      else
        format.html { render :new }
        format.json { render json: @scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scategories/1
  # PATCH/PUT /scategories/1.json
  def update
    respond_to do |format|
      if @scategory.update(scategory_params)
        format.html { redirect_to @scategory, notice: 'Scategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @scategory }
      else
        format.html { render :edit }
        format.json { render json: @scategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scategories/1
  # DELETE /scategories/1.json
  def destroy
    @scategory.destroy
    respond_to do |format|
      format.html { redirect_to scategories_url, notice: 'Scategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scategory
      @scategory = Scategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scategory_params
      params.require(:scategory).permit(:scategory_01, :scategory_02, :scategory_03, :scategory_04, :scategory_05, :scategory_06, :scategory_07, :scategory_08, :scategory_09, :scategory_10,
                                        :scategory_11, :scategory_12, :scategory_13, :scategory_14, :scategory_15, :scategory_16, :scategory_17, :scategory_18, :scategory_19, :scategory_20,
                                        :scategory_21, :scategory_22, :scategory_23, :scategory_24, :scategory_25, :scategory_26, :scategory_27, :scategory_28, :scategory_29, :scategory_30)
    end
end
