require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    # make the home page render welcome:
    erb :index
  end

  get "/new" do

    erb :create_puppy
  end

  post "/puppy" do

    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    erb :display_puppy
  end
end
