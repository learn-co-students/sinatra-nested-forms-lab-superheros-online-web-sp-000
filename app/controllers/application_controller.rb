require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :team 
    end 

    post '/teams' do 
        @team = Team.new(params[:team])
        
        @members = params[:team][:members].collect do |member|
            SuperHero.new(member)
        end 

        erb :super_hero
    end 

end