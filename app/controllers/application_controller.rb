require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/teams/:name' do
    @team = Team.find_by_name(params[:name])
    binding.pry
  end

  post '/teams' do
    team_details = params[:team]
    team = Team.new(name: team_details[:name], motto: team_details[:motto])

    team_details[:heroes].each do |hero_details|
      Hero.new(hero_details)
    end
    binding.pry
    redirect to '/teams/#{team.name}'
  end


end
