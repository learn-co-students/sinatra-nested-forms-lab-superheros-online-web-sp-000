require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |superhero_details|
        Superhero.new(superhero_details)
      end
      @superheroes = Superhero.all
      #binding.pry
      erb :team
    end

end
