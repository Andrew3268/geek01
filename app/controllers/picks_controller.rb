class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /picks
  # GET /picks.json
  def index
    @pagy, @picks = pagy(Pick.all.order("created_at DESC"), items: 20)
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @picks = pagy(tag.picks.order("created_at DESC"), items: 20)
  end

  # GET /picks/new
  def new
    @pick = Pick.new
  end

  # GET /picks/1/edit
  def edit
  end

  # POST /picks
  # POST /picks.json
  def create
    @pick = Pick.new(pick_params)
    @pick.user = current_user
    respond_to do |format|
      if @pick.save
        format.html { redirect_to "/picks", notice: 'Pick was successfully created.' }
        format.json { render :show, status: :created, location: @pick }
      else
        format.html { render :new }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picks/1
  # PATCH/PUT /picks/1.json
  def update
    respond_to do |format|
      if @pick.update(pick_params)
        format.html { redirect_to "/picks", notice: 'Pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @pick }
      else
        format.html { render :edit }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    respond_to do |format|
      format.html { redirect_to picks_url, notice: 'Pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pick_params
      params.require(:pick).permit(:p_title, :p_link, :p_source, :p_hashtag, :p_image, :p_description, :p_spare_01, :p_spare_02, :p_spare_03)
    end
end


