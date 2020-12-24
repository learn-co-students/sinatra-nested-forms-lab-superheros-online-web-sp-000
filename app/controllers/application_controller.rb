require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get "/" do 
      erb :super_hero
    end
    
    post "/superhero" do 
      @team = Team.new(params[:team])
      params[:team][:heroes].each do |hero_stats|
        Superhero.new(hero_stats)
      end 
      @heroes = Superhero.all
      erb :team
    end

  
end
