require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params[:team]['name'], params[:team]['motto'])

      @heroes = params[:team][:heroes].map do |hero| 
        Hero.new(hero['name'], hero['power'], hero['biography'])
      end
      
      erb :team
    end

end
