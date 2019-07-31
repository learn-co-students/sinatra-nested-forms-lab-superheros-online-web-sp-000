require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    
    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      
      
      @members = params[:team][:members]
      #@members.each do |member|
      #  @hero_name => member[:name]
      #  @hero_power => member[:power]
      #  @hero_biography =>member[:hero_biography]
      #end
      erb :team
    end
    
end
