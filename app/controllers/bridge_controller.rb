class BridgeController < ApplicationController
  def index
  end

  def manage_hashtags
    # @sales = Sale.all.order("created_at DESC")
    # @picks = Pick.all.order("created_at DESC")
    # @featureds = Featured.all.order("created_at DESC")
  end

  def top_100
    @most_picks = Featured.order("impressions_count DESC").take(100)
  end

  def half_deal
    # @sales_half = Sale.all.order("created_at DESC")
    @sales_half = Sale.where(updated_at: 1.days.ago..DateTime.now).order("created_at DESC")
  end

  def under_deal
    # @sales_under = Sale.all.order("created_at DESC")
    @sales_under = Sale.where(updated_at: 1.days.ago..DateTime.now).order("created_at DESC")
  end

end