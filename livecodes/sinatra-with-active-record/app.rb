require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# APP = app.rb + Router + Controller

# ROUTES FOR HTTP REQUESTS
# VERB + PATH
# get, post, patch, delete

get "/" do
  # 1. get all
  @restaurants = Restaurant.all
  # 2. ask the view to display
  erb(:index)
end

get '/restaurants/:id' do
  # params #=> {"id"=>"1"}
  # params["id"] #=> "1"
  # 1. Retreive the right instance
  # @restaurant = Restaurant.find(params["id"])
  @restaurant = Restaurant.find(params[:id])
  # 2. send to the view to be displayed
  erb(:show)
end
