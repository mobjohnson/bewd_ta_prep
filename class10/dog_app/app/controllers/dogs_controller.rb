class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :index
  end

  def new
    render :new
  end

  def create
    Dog.create({name: params[:name], image_url: params[:image_url], age: params[:age].to_i})
    redirect_to '/dogs'
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
