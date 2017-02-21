require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new' do
    @new_pup = Puppy.new(params[:name], params[:age], params[:breed])
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end
end
