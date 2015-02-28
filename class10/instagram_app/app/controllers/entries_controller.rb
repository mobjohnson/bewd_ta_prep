class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
  end

  def new
    render :new
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end



end