require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do

        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        
        @heroes = params[:team][:members].map do |hero_info|
            Hero.new(hero_info)
        end

        erb :team
    end

end
