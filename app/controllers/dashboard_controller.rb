class DashboardController < ApplicationController
  def index
    @long_url = LongUrl.new
    @long_urls = LongUrl.all
  end
end