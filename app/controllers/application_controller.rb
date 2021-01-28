require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'team'
    end

    post '/teams' do
        @team = Team.new(params[:team])

        puts params[:team][:members]

        params[:team][:members].each do |details|
            Superhero.new(details)
        end
        
        @members = Superhero.all
        # binding.pry

        erb :'super_hero'
    end

end

