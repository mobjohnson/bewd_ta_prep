require 'sinatra'
require 'sinatra/reloader'
require 'pry'

list = [
  {:item => 'fouton', :price => 100, :location => 'Arlington'},
  {:item => 'unicycle', :price => 25, :location => 'Silver Spring'}
]
listing = {}


get '/' do
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