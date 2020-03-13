require "sinatra/base"

class App < Sinatra::Base
  set :views, proc { File.join(root, "../views/") }

  get "/" do
    erb :index
  end
  post "/teams" do
    @team = Team.new(params[:team])
    @heroes = []
    params[:team][:heroes].each do |hero|
      @heroes << Hero.new(hero)
    end
    erb :team
  end
end
