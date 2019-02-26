require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    params[:team][:member].each do |hero_hash|
      hero = Hero.new(name: hero_hash[:name], power: hero_hash[:power], biography: hero_hash[:bio])
      @team.add_hero(hero)
    end
    erb :team
  end
end
