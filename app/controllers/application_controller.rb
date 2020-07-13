require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :index 
    end 

    post '/teams' do 
        # binding.pry
        @team = Team.new(params[:team])
        #binding.pry 
        params[:team][:members].each do |details|
            SuperHero.new(details)
        end
        @members = SuperHero.all
     
        erb :team 

    end 

end
