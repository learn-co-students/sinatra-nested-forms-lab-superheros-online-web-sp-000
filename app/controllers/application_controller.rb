require 'sinatra/base'
require_relative '../models/team'
require_relative '../models/hero'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  
    get '/' do 
      erb :'super_hero'
    end 
    
    
    post '/teams' do 
      @team = Team.new(params[:team][:name], params[:team][:motto])
      @members = []
      params[:team][:members].each do |member|
      @members << Hero.new(member[:name], member[:power], member[:bio])
      end
      erb :'team'
    end 
end
