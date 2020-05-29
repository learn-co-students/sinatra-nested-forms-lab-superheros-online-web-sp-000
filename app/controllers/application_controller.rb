require 'pry'
require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :super_hero
  end 
  
  post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |details| 
        Super_hero.new(details)
      end
      @members = Super_hero.all

      erb :teams
binding.pry
    end
end