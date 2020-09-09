require "pry"
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    
        erb :super_hero
    end

    post '/teams' do
      #binding.pry
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @name = []
        @power = []
        @bio = []
        
        params[:team][:members].each do |hero|
            @name << hero[:name]
            @power << hero[:power]
            @bio << hero[:bio]
            
        end
        # binding.pry

         erb :team
    end


end
