require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

    post '/teams' do
      @team = Team.new(params)

      hero_hash = params[:team][:hero]
      hero_hash.each do |info|
        Superhero.new(info)
      end

      @all_superheroes = Superhero.all

      erb :'team'
    end
end
