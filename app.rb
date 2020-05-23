require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
    end
    
    get '/' do
        erb :index
    end

    post '/checkout' do
        # binding.pry
        # session["name"] = "Victoria"
        session["item"] = params[:item]
        @session = session
        erb :checkout
    end
        
end