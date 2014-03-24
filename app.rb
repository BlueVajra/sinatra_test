require 'sinatra/base'

class App < Sinatra::Base
  ITEM_ARRAY = []

  get '/' do
    erb :index, locals: {:items => ITEM_ARRAY}
  end

  get '/item/new' do
    erb :new_item
  end

  post '/' do
    ITEM_ARRAY << params[:new_item]
    redirect('/')
  end
end