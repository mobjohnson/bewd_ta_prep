require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

list = [
  # {:item => 'fouton', :price => 100, :location => 'Arlington'},
  # {:item => 'unicycle', :price => 25, :location => 'Silver Spring'}
]
listing = {}


get '/' do
  redirect '/index'
end

get '/index' do
  @list = list
  erb :index
end

get '/new' do
  @list = list
  erb :new
end

post '/create' do
  item = params[:item]
  price = params[:price]
  location = params[:location]
  listing = {item: item, price: price, location: location}
  list.push(listing)
  redirect :index
end

get '/deals' do
  binding.pry

  @list = list.where('price < 20')
  redirect :index
end


