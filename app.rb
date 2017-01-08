#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

set :database,"sqlite3:pizzashop.db"

	class Product < ActiveRecord::Base
		validates :name, presence: true, length: { minimum: 3}
		validates :phone, presence: true, length: {is: 10}
		validates :datestamp, presence: true
	end


get '/' do
	erb :index
end