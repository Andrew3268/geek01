class BridgeController < ApplicationController
  def index
  end

  def hashtags
    @sales = Sale.all.order("created_at DESC")
    @picks = Pick.all.order("created_at DESC")
    @featureds = Featured.all.order("created_at DESC")
  end
  
end
