require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
       
        @members = params[:team][:members].collect do |m|
            hero = SuperHero.new(name: m[:name], power: m[:power], bio: m[:bio])
        end

        erb :team
    end


end
