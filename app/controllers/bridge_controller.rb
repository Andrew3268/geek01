class BridgeController < ApplicationController
  def index
  end

  def manage_hashtags
    @sales = Sale.all.order("created_at DESC")
    @picks = Pick.all.order("created_at DESC")
    @featureds = Featured.all.order("created_at DESC")
  end

  def gram
    @picks = Pick.all.order("created_at DESC").limit(10)
  end
  
end
