#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database,"sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
	
end


get '/' do
	@products=Product.all
	erb :index
end

# get '/cart' do
# 	@products=Product.all
# 	erb :cart
# end

post '/cart' do
	orders_input=params[:orders] 
	@items=parse_order_input orders_input

	@items.each do |item| 
			item[0]=Product.find(item[0])
	end
	erb :cart
end

def parse_order_input orders_input
	str1=orders_input.split(/,/)
	arr=[]

	str1.each do |x| 
		str2=x.split(/\=/)
		str3=str2[0].split(/_/)
		id=str3[1];
		cnt=str2[1]
		arr2=[id,cnt]
		arr.push arr2
	end
	return arr
end