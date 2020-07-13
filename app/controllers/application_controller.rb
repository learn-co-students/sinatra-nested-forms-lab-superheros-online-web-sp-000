require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      
      erb :index
    end
    
    post '/teams' do
      
      @team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
      params["team"]["heroes"].each do |hero_details|
        SuperHero.new(name: hero_details["name"], power: hero_details["power"], bio: hero_details["biography"])
      end
      @heroes = SuperHero.all
      
      
    
      erb :show
    end
end
