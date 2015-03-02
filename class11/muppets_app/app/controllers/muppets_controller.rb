class MuppetsController < ApplicationController

  def index
    @muppets = Muppet.all
  end

  def show
    @muppet = Muppet.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
