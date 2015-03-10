class MoviesController < ApplicationController

  def index
    if params[:search]
      search = params[:search].gsub(' ', '+')
      response = HTTParty.get("http://www.omdbapi.com/?s=#{search}")
      results = JSON.parse(response.body)
      @results = results['Search']
    else
      @results = []
    end
  end

  def show
    # @movie = Movie.find(params[:id])
  end

end