require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :'../../views/new_team'
    end 
    
    post '/teams' do
      @team = Team.new(params[:team])
      
      params[:team][:member].each do |hero|
        Hero.new(hero)
      end
      
      @heroes = Hero.all
      erb :'../../views/teams'
    end 
    
    


end
