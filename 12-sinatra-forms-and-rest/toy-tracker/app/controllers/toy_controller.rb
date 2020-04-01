class ToyController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # new form for a toy
  get '/toys/new' do 
    erb :'toys/new' 
  end


  post '/toys' do
    binding.pry
    # check out what the params look like
    @child = Child.find_or_create_by(name: params['child']['name'])
    @toy = Toy.new(name: params['toy']['name'], )
    if @toy.valid?
      @toy.save
      redirect to('/children')
    else
      redirect to('/toys/new')
    end
  end
end