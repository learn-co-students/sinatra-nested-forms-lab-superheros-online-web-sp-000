require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'team'
    end

    post '/teams' do 
        #binding.pry
        team = Team.create(name: params[:team][:name], motto: params[:team][:motto])
        params[:team][:heros].each do |hero|
           hero =  Hero.new(hero)
           hero.team = team
           hero.save
        end
        
        erb :'super_hero'
    end
end
