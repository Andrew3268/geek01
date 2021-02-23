class SitemapController < ApplicationController
    respond_to :xml
  def index
    @sales = Sale.all
    @featureds = Featured.all
    @picks = Pick.all
  end
end
