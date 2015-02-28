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
    @dog = Dog.find(params[:id])
    render :show
  end


  def edit
    @dog = Dog.find(params[:id])
    render :edit
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to @dog
    else
      render :edit
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_url
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :image_url, :age)
  end

end
