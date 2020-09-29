require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :team
    end

    post '/teams' do
    	@team = params[:team]
    	@member1 = @team[:members][0]
    	@member2 = @team[:members][1]
    	@member3 = @team[:members][2]


    	erb :super_hero
    end


end
