require 'sinatra/base'

class App < Sinatra::Base

    # this line adds the views so we can solely reference files in views
    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      @hero1 = Hero.new(params[:team][:hero][0])
      @hero2 = Hero.new(params[:team][:hero][1])
      @hero3 = Hero.new(params[:team][:hero][2])

      erb :team
    end

end
