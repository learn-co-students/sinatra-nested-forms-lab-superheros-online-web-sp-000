require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      @team = params[:team]
      @hero1 = params[:team][:heroes][0]
      @hero1 = params[:team][:heroes][1]
      @hero1 = params[:team][:heroes][2]
      erb :team
    end
    
end
