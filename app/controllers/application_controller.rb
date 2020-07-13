require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :create_team_and_heroes
  end

  post '/teams' do
    @team = Team.new(params[:team])
    erb :team
  end
end
