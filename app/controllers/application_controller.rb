require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end
  
    post '/team' do
        "hello"
        @team = Team.new(params[:team])
        members = params[:team][:members]
        @heros = members.collect do |hash|
          SuperHero.new(hash)
        end
        erb :team
    end


end
