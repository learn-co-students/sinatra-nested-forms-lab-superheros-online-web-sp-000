require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
    @team = Team.new(params[:team])

    heros = params[:team][:hero]

    @super_heroes = heros.collect do |details|
      SuperHero.new(details)
    end
    erb :team
  end
end
