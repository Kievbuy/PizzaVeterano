require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'

set :database, 'sqlite3:pizza.db'

class Product < ActiveRecord::Base
end



get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

# ==== POST ====

post '/cart' do
  erb :cart
end