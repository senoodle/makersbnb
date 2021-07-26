require 'sinatra/base'
require 'sinatra/reloader'
require 'pg'

class MakersBnB < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to MakersBnB'
  end

  get '/makersbnb/listings' do
    'Welcome to MakersBnB'
    erb(:'/listings/index')
  end

  get '/makersbnb/listings/add' do
    erb(:'/listings/add')
  end

  post '/makersbnb/listings' do
    redirect '/makersbnb/listings'
  end



  run! if app_file == $0

end