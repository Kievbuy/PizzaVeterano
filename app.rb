require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'

set :database, 'sqlite3:pizza.db'

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
  # validates :name, presence: true
  # validates :phone, presence: true
  # validates :address, presence: true
end


get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

get '/all_orders' do
  @all_orders = Order.order('created_at DESC')

  erb :all_orders
end

# ==== POST ====

post '/cart' do
  @orders = params[:orders]
  @items = parse_orders_line @orders

  @items.each do |item|
    item[0] = Product.find(item[0])
  end

  erb :cart
end

post '/order' do
  @o = Order.new params[:order]

  if @o.save
    erb "<h2>Thank you. Your order is folowing:</h2>"
    erb :order
  else
    @error = @o.errors.full_messages.first
    erb :cart
  end

  erb :order
end


def parse_orders_line orders_line

  s1 = orders_line.split(',')

  arr = []

  s1.each do |x|
    s2 = x.split(/=/)
    s3 = s2[0].split(/_/)
    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]
    arr.push arr2

  end
  return arr
end