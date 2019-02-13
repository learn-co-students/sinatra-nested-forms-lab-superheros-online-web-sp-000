require 'sinatra/base'

class App < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
  end

  get "/" do
    erb :super_hero
  end

  post "/teams" do
    @team = Team.new(params[:team])

    params[:team][:members].each do |details|
      Hero.new(details)
    end

    @heroes = Hero.all

    erb :team
  end
end