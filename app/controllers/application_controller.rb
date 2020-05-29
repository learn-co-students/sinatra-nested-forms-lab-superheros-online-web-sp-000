require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 
  
  post '/team' do 
  @team = Team.new(params[:team])
  params[:team][:super_hero].each do |details|
    @super_hero = Super_hero.new(
      details)
    end
      erb :team
        binding.pry

  end 

end
