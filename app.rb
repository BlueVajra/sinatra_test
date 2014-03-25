require 'sinatra/base'

class App < Sinatra::Base
  ITEM_ARRAY = []

  get '/' do
    erb :index, locals: {:items => ITEM_ARRAY}
  end

  get '/item/new' do
    erb :new_item
  end

  get '/item/:id' do
    erb :item, locals: {:item_name => params[:id]} # hash-key => hash-value  which is a hash {key => value}
  end

  post '/' do
    ITEM_ARRAY << params[:new_item]
    redirect('/')
  end
end