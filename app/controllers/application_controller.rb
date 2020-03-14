require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # make a route that responds to a GET request at '/'
    get '/' do 
        binding.pry
        erb :super_hero
    end 

    post '/teams' do  
        @team_name = params["team"]["name"] 
        @team_motto = params["team"]["motto"]
        @member1_name = params["team"]["members"][]["name"]
        erb :team 
    end 

end
