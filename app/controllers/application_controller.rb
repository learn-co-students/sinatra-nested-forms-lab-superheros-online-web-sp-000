require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 
  
  post '/team' do 
  @team = Team.new(params[:team])
  
  params[:team][:super_hero].each do |details|
  binding.pry
    @super_hero = Super_hero.new(
      details)
    end
      erb :team
  end 

end
