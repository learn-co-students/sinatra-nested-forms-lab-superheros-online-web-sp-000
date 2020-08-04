require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
         erb :'super_hero'
       
    end

    post '/teams' do 
       
         Team.new(name: params[:team][:name],motto: params[:team][:motto])
         @teams = Team.all
         # @hero = Hero.all
        # erb :'super_hero'
        params[:team][:hero].each{|hero| Hero.new(hero)} 
        @heros = Hero.all
        erb :'team'
    end
end
