require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    members = params[:team][:members]
    
    members.each do |member_p|
      SuperHero.new({name: member_p[:name], power: member_p[:power], bio: member_p[:bio]})
    end
    @super_heroes = SuperHero.all
    
    erb :team
  end

end
