require 'sinatra/base'
require './lib/item_repository'

class App < Sinatra::Application

  ITEM_REPOSITORY = ItemRepository.new

  get '/' do
    erb :index, locals: {:items => ITEM_REPOSITORY.items}
  end

  get '/item/new' do
    erb :new_item
  end

  post '/' do
    ITEM_REPOSITORY.add(params[:new_item])
    redirect('/')
  end

  get '/item/:id' do
    erb :item, locals: {:item_name => params[:id]}
  end

  put '/item/:old_item' do
    ITEM_REPOSITORY.edit(params[:old_item], params[:edit_item])
    redirect('/')
  end

  delete '/item/:old_item' do
    ITEM_REPOSITORY.delete(params[:old_item])
    redirect('/')
  end


end