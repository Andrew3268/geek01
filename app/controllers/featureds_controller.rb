class FeaturedsController < ApplicationController
  before_action :set_featured, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /featureds
  # GET /featureds.json
  def index
    @pagy, @featureds = pagy(Featured.all.order("created_at DESC"), items: 80)
  end

  # GET /featureds/1
  # GET /featureds/1.json
  def show
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @pagy, @featureds = pagy(tag.featureds.order("created_at DESC"), items: 80)
  end

  # GET /featureds/new
  def new
    @featured = Featured.new
  end

  # GET /featureds/1/edit
  def edit
  end

  # POST /featureds
  # POST /featureds.json
  def create
    @featured = Featured.new(featured_params)
    @featured.user = current_user
    respond_to do |format|
      if @featured.save
        format.html { redirect_to @featured, notice: 'Featured was successfully created.' }
        format.json { render :show, status: :created, location: @featured }
      else
        format.html { render :new }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featureds/1
  # PATCH/PUT /featureds/1.json
  def update
    respond_to do |format|
      if @featured.update(featured_params)
        format.html { redirect_to @featured, notice: 'Featured was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured }
      else
        format.html { render :edit }
        format.json { render json: @featured.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featureds/1
  # DELETE /featureds/1.json
  def destroy
    @featured.destroy
    respond_to do |format|
      format.html { redirect_to featureds_url, notice: 'Featured was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured
      @featured = Featured.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def featured_params
      params.require(:featured).permit(:f_title, :f_link, :f_source, :f_video, :f_hashtag, :f_description, :f_image, :f_is_price, :f_was_price)
    end
end


