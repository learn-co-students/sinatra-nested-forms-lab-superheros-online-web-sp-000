require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/teams' do
    @team = Team.all.last
    erb :team
  end

  post '/teams' do
    team_details = params[:team]
    team = Team.create(name: team_details[:name], motto: team_details[:motto])

    team_details[:heroes].each do |hero_details|
      hero = Hero.create(hero_details)
      hero.team = team
      hero.save
    end

    redirect to '/teams'
  end
end
