require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/new' do 
    erb :view_selections
  end 
  
  post '/new' do
    erb :view_selections
  end
  
  
  post '/' do 
    @area_index = params[:area]
    @activity_index = params[:activities]
    p @activity_index
    @zip = zip_code(@area_index)
    p @zip
    erb :results
  end
  
  
  
end
