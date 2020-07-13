require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:members].each do |hero|
        Hero.new(hero)
      end

      @members = Hero.all

      erb :team
    end

end
