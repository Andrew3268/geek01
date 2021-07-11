class FeaturedsController < ApplicationController
  before_action :set_featured, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index, :hashtags]

  # GET /featureds
  # GET /featureds.json
  def index
    @pagy, @featureds = pagy(Featured.all.order("created_at DESC"), items: 80)
    # @pagy, @featureds  = pagy(Featured.order("impressions_count DESC"), items: 80)
    if params[:search]
      @search_term = params[:search]
      @featureds = @featureds.search_by(@search_term)
    end
  end

  # GET /featureds/1
  # GET /featureds/1.json
  def show
    #without IP_adress
    impressionist(@featured)
    set_meta_tags title: @featured.f_title,
                  # site: 'Aveneu71::감성 큐레이팅 Shop',
                  revierse: true,
                  description: @featured.f_title,
                  keywords: '쿠팡, 아마존, 알리익스프레스, 직구, 아이디어상품, 홈인테리어, 인테리어소품, 집꾸미기, 방꾸미기, 자취방꾸미기, 홈데코, 주방인테리어',
                  # twitter: {
                  #   card: "summary",
                  #   site: "@aveneu71",
                  #   title: @featured.f_title,
                  #   description: @featured.f_title,
                  #   image: @featured.f_image
                  # },
                  og: {
                    title: @featured.f_title,
                    description: @featured.f_title,
                    type: 'website',
                    url: post_url(@featured),
                    image: @featured.f_image
                  }
    
    #with IP_adress
    # impressionist(@featured, nil, unique: [:ip_address])
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
      @featured = Featured.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def featured_params
      params.require(:featured).permit(:f_title, :f_link, :f_source, :f_video, :f_hashtag, :f_description, :f_image, :f_is_price, :f_was_price,
                                       :f_spare_01, :f_spare_02, :f_spare_03, :f_spare_04, :f_spare_05, :f_spare_06, :f_spare_07, :f_spare_08, :f_spare_09)
    end
end


