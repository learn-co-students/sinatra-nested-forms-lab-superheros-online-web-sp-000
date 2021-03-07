require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end
  
  post "/teams" do
    binding.pry
    
    @team = Team.new(params[:name],params[:motto])
    params[:name][:motto][:bio].each do |details|
    Hero.new(details)
    end
 
    @Heroes = Hero.all
    erb :team
    end

    set :views, Proc.new { File.join(root, "../views/") }


end