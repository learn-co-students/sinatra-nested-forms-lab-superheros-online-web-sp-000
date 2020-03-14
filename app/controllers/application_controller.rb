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
        @member2_name = params["team"]["members"][1]["name"]
        @member2_power = params["team"]["members"][1]["power"]
        @member2_biography = params["team"]["members"][1]["biography"]
        @member3_name = params["team"]["members"][2]["name"]
        @member3_power = params["team"]["members"][2]["power"]
        @member3_biography = params["team"]["members"][2]["biography"]
        
        erb :team 
    end 

end
