require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @params = params
=begin
      @new_team = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all
      #params["team"].to_s
      #{}"Team Motto:" + params["team"].to_s
=end
      erb :team
    end

end
