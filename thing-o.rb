require 'sinatra'
require 'active_record'
require_relative './app/models/book.rb'


ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/index' do 
  erb :index
end

