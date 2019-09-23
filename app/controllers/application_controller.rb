require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :"index"
    end

    post '/heroes' do
        @team = Team.new(params)
        @heroes = params[:team][:heroes].collect do |details| 
            Hero.new(details)
        end
        erb :"team"
    end


end
