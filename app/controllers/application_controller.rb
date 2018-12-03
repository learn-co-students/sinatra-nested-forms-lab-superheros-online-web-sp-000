require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :'../views/super_hero'
  end
  
  post '/teams' do
    @superhero = SuperHero.new
    @superhero.name = params[:name]
    @superhero.superpower = params[:superpower]
    @superhero.bio = params[:bio]
    # binding.pry
    erb :'../views/team'
  end
end
