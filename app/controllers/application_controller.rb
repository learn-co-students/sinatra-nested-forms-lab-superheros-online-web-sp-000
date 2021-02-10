require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:superheros].each do |info|
        SuperHero.new(info)
      end

      @superheros = SuperHero.all

      erb :team
    end

end
