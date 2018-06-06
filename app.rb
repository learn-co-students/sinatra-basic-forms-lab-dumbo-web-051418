require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params['name']
    @age = params['age']
    @breed = params['breed']  #here we take the elements and display the new puppy

    erb :display_puppy
  end


end
