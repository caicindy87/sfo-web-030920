class BooksController < ApplicationController

  #index
  get '/books' do
    @books = Book.all
    erb :'books/index'
  end

  #new
  get '/books/new' do 
    @authors = Author.all
    erb :'books/new'
  end

  #show
  get '/books/:id' do
    @book = Book.find_by_id(params[:id])
    erb :'books/show'
  end

  post '/books' do 
    # binding.pry
    @book = Book.create(params[:book])
    redirect to("/books/#{@book.id}")
  end

end