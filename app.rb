require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/create_puppy' do
    @puppy = Puppy.new(params[name], params[breed], params[age])
    erb :display_puppy
  end

end
