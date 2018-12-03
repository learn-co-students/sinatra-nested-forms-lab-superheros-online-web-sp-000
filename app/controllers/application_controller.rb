require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      
      members = params[:team][:members]
      
      members.each do |details|
        SuperHero.new({name: details[:name], superpower: details[:superpower], bio: details[:bio]})
      end
      @superheroes = SuperHero.all
    erb :team
  end
end
