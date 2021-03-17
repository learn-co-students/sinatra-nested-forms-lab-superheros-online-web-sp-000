require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'/super_hero'
    end

    post '/team' do
        
        @team_name = params["team"]["name"]
        @team_motto = params["team"]["motto"]
        
        @hero_1 = params["team"]["heros"][0]
        @hero_2 = params["team"]["heros"][1]
        @hero_3 = params["team"]["heros"][2]

        erb :team

    end


end
