require 'rubygems'
require 'sinatra'
require 'sqlite3'


get '/' do
  erb :index
end

get '/about' do
  erb :about
end