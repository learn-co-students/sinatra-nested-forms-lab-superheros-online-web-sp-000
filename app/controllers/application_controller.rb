require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/teams/:name' do

  end

  post '/teams' do
    binding.pry
    team_details = params[:team]
    team = Team.new(name: team_details[:name], motto: team_details[:motto])

    team_details[:heroes].each do |hero_details|
      Hero.new(hero_details)
    end

    redirect to '/teams/#{team.name}'
  end


end
