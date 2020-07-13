require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        
        params.inspect
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(params[:team][:name], params[:team][:motto])
        params[:team][:heros].each do |hero|
            Hero.new(hero[:name], hero[:power], hero[:biography])
        end
        @heros = Hero.all
        erb :team
    end

end
