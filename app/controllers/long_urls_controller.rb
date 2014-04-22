class LongUrlsController < ApplicationController
  def create
    @long_url = LongUrl.new(url_params)
    if @long_url.save
      redirect_to root_path
    else
      # ??
    end
  end

  private
  
  def url_params
    params.require(:long_url).permit(:normal_url)
  end
end