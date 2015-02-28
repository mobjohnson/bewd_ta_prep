class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
  end

  def new
    render :new
  end

  def create
    Entry.create({author: params[:author], photo_url: params[:photo_url], date_taken: params[:date_taken]})
    redirect_to '/'
  end

  def show
    @entry = Entry.find(params[:id])
    render :show
  end

  def edit

  end

  def update

  end

  def destroy

  end



end