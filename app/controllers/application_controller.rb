require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        #give params to models and send models to views
        @team = Team.new(params[:team])

        params[:team][:members].each do | memberhash |
            Hero.new(memberhash)
        end

        @heroes = Hero.all
        
        erb :team
    end


end
