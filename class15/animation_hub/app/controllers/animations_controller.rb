class AnimationsController < ApplicationController

  def index
    if params[:query]
      query = params[:query].gsub(' ', '+')

      response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{query}&limit=3&api_key=dc6zaTOxFJmzC")
      results = JSON.parse(response.body)
      @results = results['data']
    else
      @results = []
    end
  end

end
