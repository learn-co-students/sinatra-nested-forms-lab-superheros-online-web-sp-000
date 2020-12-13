require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/teams' do
        @team = Team.new(params[:team])
        @heroes = params[:team][:members].collect do |member|
            Hero.new(member)
        end
        erb :team
    end
end
