require 'pry'
require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 
  
post '/teams' do 
  team_name = params[:team][:name]
  motto = params[:team][:motto]
  @team = Team.new(name: team_name, motto: motto)
  
  
  team_members = params[:team][:members]
  team_members.collect do|member|
  Super_hero.new(member[:name], member[:power], member[:bio])
  end
  
  erb :team
end

end
