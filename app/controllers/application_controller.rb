require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # make a route that responds to a GET request at '/'
    get '/' do 
        erb :super_hero
    end 

    post '/teams' do  
        @team_name = params["team"]["name"] 
        @team_motto = params["team"]["motto"]
        @member1_name = params["team"]["members"][0]["name"]
        @member1_power = params["team"]["members"][0]["power"]
        @member1_biography = params["team"]["members"][0]["biography"]
        erb :team 
    end 

end
