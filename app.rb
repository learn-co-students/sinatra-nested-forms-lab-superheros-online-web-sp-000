require './app/models/hero.rb'
require './app/models/team.rb'


class App < Sinatra::Base

    get '/' do

        erb :new
    end
    
    post '/team' do
        @team = Team.new(params[:team])

        params[:team][:heroes].each do |details|
            Hero.new(details)
        end
        
        @members = Hero.all

        erb :team
    end

end