require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/item/new' do
    erb :new_item
  end

  post '/' do
    redirect('/')
  end
end