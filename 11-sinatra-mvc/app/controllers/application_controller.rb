class ApplicationController < Sinatra::Base
  set(:views, 'app/views')

  get '/' do
    "Welcome to Flatiron Remote-Immersive!"
  end

  # index page - see all books (HTML/erb page)
  get '/books' do
    @books = Book.all
    erb :index
  end

  # returns a form that allows a user to create a book
  get '/books/new' do
    erb :new
  end

  # does the business logic of creating a book
  post '/books' do 
    @book = Book.create(params)
    redirect to('/books')   # by default is always a get request
  end

end