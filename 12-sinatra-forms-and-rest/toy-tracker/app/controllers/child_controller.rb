class ChildController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views/children'
  end

  # INDEX - route to get a list of children
  get '/children' do 
    @children = Child.all
    erb(:index)
  end

  # SHOW - route to show one child, find by ID
  get '/children/:id' do
    @child = Child.find(params[:id])
    erb :show 
  end


  

end