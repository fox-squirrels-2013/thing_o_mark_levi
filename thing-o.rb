require 'sinatra'
require 'active_record'
require_relative './app/models/book.rb'


ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do 
  @books = Book.all
  erb :index
end

get '/books/:id' do
  @book = Book.find(params[:id])
  erb :book
end

post '/book/:id' do
  @book = Book.find(params[:id])
  @book.title = params[:title]
  @book.save

  redirect "/books/#{params[:id]}"
end

get '/recommend_a_book' do 
  erb :recommend_a_book
end

post '/recommend_a_book' do 
  Book.create(:author => params[:author], :title => params[:title], :pages => params[:pages])
  redirect '/'
end
