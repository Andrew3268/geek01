class BridgeController < ApplicationController
  def index
  end

  def manage_hashtags
    @sales = Sale.all.order("created_at DESC")
    @picks = Pick.all.order("created_at DESC")
    @featureds = Featured.all.order("created_at DESC")
  end

  def top_100
    @most_picks = Featured.order("impressions_count DESC").take(100)
  end

end
