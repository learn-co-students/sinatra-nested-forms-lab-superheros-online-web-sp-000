require 'sinatra/base'
require_all 'app'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params)

      params[:team][:heros].each do |hero|
        Hero.new(hero)
      end

      @heros = Hero.all

      erb :teams

    end



end
