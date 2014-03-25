require 'sinatra/base'

class App < Sinatra::Application
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

  get '/item/:id' do
    erb :item, locals: {:item_name => params[:id]} # hash-key => hash-value  which is a hash {key => value}
  end

  put '/item/:old_item' do
    ITEM_ARRAY.each_with_index do |item, index|
      if item == params[:old_item]
        ITEM_ARRAY[index] = params[:edit_item]
      end
    end
    redirect('/')
  end

  delete '/item/:old_item' do
    #ITEM_ARRAY.delete_if {|item| item == params[:old_item] }
    ITEM_ARRAY.delete(params[:old_item])
    #index_to_delete = nil
    #ITEM_ARRAY.each_with_index do |item, index|
    #  if item == params[:old_item]
    #    index_to_delete = index
    #  end
    #end
    #ITEM_ARRAY.delete_at(index_to_delete)
    redirect('/')
  end


end