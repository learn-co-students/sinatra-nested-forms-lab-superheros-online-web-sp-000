require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end
    
    post '/teams' do
      @team = Team.new(params)
      
      params["team"]["members"].each do |m|
        Hero.new(m)
      end

      @heroes = Hero.all
      erb :team
    end

end
