require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Teams.new(params[:team])

        params[:team][:heroes].each do |details|
            Heroes.new(details)
        end
    
        @heroes = Heroes.all

        erb :team
    end


end
