require "pry"
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    
        erb :super_hero
    end

    post '/team' do
        # binding.pry
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])

        params[:team][:name].each do |attrs|
            Team.new(attrs)
        end

        @team = Team.all

         erb :team
    end


end
