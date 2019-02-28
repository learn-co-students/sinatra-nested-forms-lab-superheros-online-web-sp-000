require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
     erb :team
    end

    post '/teams' do
        @team = Team.new(params[:team])
        params[:team][:heroes].each do |hero|
            Hero.new(hero)
        end
        @heroes = Hero.all
        binding.pry
        erb :super_hero
    end
end
