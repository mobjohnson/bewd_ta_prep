class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :index
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
