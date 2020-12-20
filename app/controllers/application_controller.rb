require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        #binding.pry
        @team = Team.new(params[:team][:name], params[:team][:motto])
        @hero1 = Hero.new(params[:team][:heroes][0][:name], params[:team][:heroes][0][:power], params[:team][:heroes][0][:bio])
        @hero2 = Hero.new(params[:team][:heroes][1][:name], params[:team][:heroes][1][:power], params[:team][:heroes][1][:bio])
        @hero3 = Hero.new(params[:team][:heroes][2][:name], params[:team][:heroes][2][:power], params[:team][:heroes][2][:bio])

        erb :team
    end

end
